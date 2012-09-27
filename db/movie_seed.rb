require 'open-uri'
require 'nokogiri'

410.times do |i|
  html_stream = open("http://www.visualnethost2.com.br/festrio/2012/web/filme-2012.asp?id_filme=#{i + 1}").read
  doc = Nokogiri::HTML(html_stream)
  movie_name = doc.search("[text()*='Original:']")[0].children[1].text.strip
  movie = Movie.new(:name => movie_name)
  sessions = doc.xpath("//div[@class='css-panes']/div[3]/table").children
  movie.imdb_data = open("http://www.omdbapi.com/?i=&t=#{movie.urlized_name}").read
  movie.imdb_url = "http://www.imdb.com/title/#{movie.imdb['imdbID']}"
  movie.year = movie.imdb['Year']
  director_name = movie.imdb['Director'] || ""
  director_name = director_name.split(",").first.try(:strip)
  movie.director = Director.find_or_create_by_name(director_name)
  actors = movie.imdb['Actors'] || ""
  actors.split(",").each do |actor|
    movie.actors << Actor.find_or_create_by_name(actor.strip)
  end
  genres = movie.imdb['Genre'] || ""
  genres.split(",").each do |genre|
    movie.genres << Genre.find_or_create_by_name(genre.strip)
  end
  movie.imdb_votes = movie.imdb['imdbVotes'].try(:to_i)
  movie.imdb_rating = movie.imdb['imdbRating'].try(:to_f)
  movie.save
  sessions.each do |session|
    infos = session.children
    theater = Theater.find_by_name_ignoring_case(infos[2].text.strip)
    hour = infos[4].text.split(" ")[0]
    hour = Time.strptime(hour, "%H:%M")
    date = infos[0].text.split("-")[1].strip.gsub(/(\d\d)\/?(\d\d)\/?(\d\d)/, "#{$1}/#{$2}/#{$3}")
    date = Date.strptime(date, "%d/%m/%Y")
    movie_session = MovieSession.create(:movie => movie, :theater => theater, :date => date, :start_time => hour)
  end
end