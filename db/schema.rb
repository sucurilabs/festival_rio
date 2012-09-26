# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120926175610) do

  create_table "actors", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "imdb_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "actors", ["country_id"], :name => "index_actors_on_country_id"

  create_table "awards", :force => true do |t|
    t.integer  "movie_id"
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "awards", ["movie_id"], :name => "index_awards_on_movie_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "directors", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "imdb_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "directors", ["country_id"], :name => "index_directors_on_country_id"

  create_table "festivals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "join_movies", :force => true do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "movie_session_id"
  end

  add_index "join_movies", ["user_id"], :name => "index_join_movies_on_user_id"

  create_table "localizations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movie_sessions", :force => true do |t|
    t.integer  "theater_id"
    t.integer  "movie_id"
    t.time     "start_time"
    t.time     "end_time"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "movie_sessions", ["movie_id"], :name => "index_movie_sessions_on_movie_id"
  add_index "movie_sessions", ["theater_id"], :name => "index_movie_sessions_on_theater_id"

  create_table "movies", :force => true do |t|
    t.integer  "director_id"
    t.integer  "category_id"
    t.string   "name"
    t.text     "synopsis"
    t.integer  "year"
    t.string   "imdb_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "movies", ["category_id"], :name => "index_movies_on_category_id"
  add_index "movies", ["director_id"], :name => "index_movies_on_director_id"

  create_table "movies_actors", :id => false, :force => true do |t|
    t.integer "movie_id"
    t.integer "actor_id"
  end

  create_table "movies_contries", :id => false, :force => true do |t|
    t.integer "movie_id"
    t.integer "contry_id"
  end

  create_table "movies_festivals", :id => false, :force => true do |t|
    t.integer "movie_id"
    t.integer "festival_id"
  end

  create_table "movies_genres", :id => false, :force => true do |t|
    t.integer "movie_id"
    t.integer "genre_id"
  end

  create_table "neighborhoods", :force => true do |t|
    t.integer  "localization_id"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "neighborhoods", ["localization_id"], :name => "index_neighborhoods_on_localization_id"

  create_table "theaters", :force => true do |t|
    t.integer  "neighborhood_id"
    t.string   "address"
    t.integer  "number"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "theaters", ["neighborhood_id"], :name => "index_theaters_on_neighborhood_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
