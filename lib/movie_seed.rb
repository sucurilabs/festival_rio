#encoding: utf-8
require 'open-uri'
require 'nokogiri'


class MovieSeed
  def initialize(loop_times)
    puts "Cleanup database"
    Movie.delete_all
    MovieSession.delete_all
    Actor.delete_all
    Genre.delete_all
    Director.delete_all
    Country.delete_all

    loop_times.times do |i|
      html_stream = open("http://www.visualnethost2.com.br/festrio/2012/web/filme-2012.asp?id_filme=#{i + 1}").read
      doc = Nokogiri::HTML(html_stream)
      movie_name = doc.search("[text()*='Original:']")[0].children[1].text.try(:strip)
      puts "Getting information of #{movie_name} - #{i + 1}/#{loop_times}"
      movie = Movie.new(:name => movie_name)
      movie_infos = doc.search("[text()*='Ficha Técnica']").first.parent.parent.parent
      movie.year = movie_infos.css("tr[18]").text.try(:strip)
      director_name = movie_infos.css("tr[4]").text.try(:strip).split(",").first.try(:strip)
      movie.director = Director.find_or_create_by_name(director_name) if director_name
      m_actors = []
      movie_infos.css("tr[8]").text.try(:strip).split(",").each do |actor|
        m_actors << Actor.find_or_create_by_name(actor.try(:strip))
      end
      movie.actors = m_actors
      m_countries = []
      movie_infos.css("tr[16]").text.try(:strip).split("/").each do |country|
        m_countries << Country.find_or_create_by_name(country.try(:strip))
      end
      movie.countries = m_countries
      movie.duration = movie_infos.css("tr[20]").text.try(:strip).to_i
      movie.synopsis = doc.xpath("//div[@class='css-panes']/div[1]").children[1].text.try(:strip)
      bio = doc.xpath("//div[@class='css-panes']/div[2]").children[1].text.try(:strip)
      movie.director.update_attributes(:bio => bio)
      movie.save
      sessions = doc.xpath("//div[@class='css-panes']/div[3]/table").children
      sessions.each do |session|
        infos = session.children
        theater = Theater.find_by_name_ignoring_case(infos[2].text.try(:strip))
        hour = infos[4].text.split(" ")[0]
        hour = Time.strptime(hour, "%H:%M")
        date = nil
        if infos[0].text.split("-")[1]
          date_match = infos[0].text.split("-")[1].try(:strip).match(/.*(\d\d)\/?(\d\d)\/?(\d\d\d\d).*/) 
          date = date_match[1..3].join("/")
          date = Date.strptime(date, "%d/%m/%Y")
        end 
        movie_session = MovieSession.create(:movie => movie, :theater => theater, :date => date, :start_time => hour)
      end
    end
  end

  def self.imdb_seed
    count = 0
    Movie.all.each do |movie|
      next if movie.imdb_data
      count += 1
      puts "Searching #{movie.name} on ImDB"
      begin
        imdb_data = open("http://www.deanclatworthy.com/imdb/?q=#{movie.urlized_name}").read
      rescue
        next
      end
      movie.imdb_data = imdb_data
      if movie.imdb["title"]
        puts "Getting imdb data for #{movie.name}"
        movie.imdb_url = movie.imdb['imdburl']
        m_genres = []
        genres = movie.imdb['genres'] || ""
        genres.split(",").each do |genre|
          m_genres << Genre.find_or_create_by_name(genre.try(:strip))
        end
        movie.genres = m_genres
        movie.imdb_votes = movie.imdb['votes'].try(:to_i)
        movie.imdb_rating = movie.imdb['rating'].try(:to_f)
      end
      if count >= 30
        count = 0
        sleep (1.1).hours 
      end
    end
  end
end