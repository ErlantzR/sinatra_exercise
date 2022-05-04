require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
    "hello!"
  end

get '/secret' do
    "Let's play some football"
  end

get '/response' do
    "my leg hurts."
  end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
  end

  post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
  end

  get '/form' do
    erb(:cat_form)
  end