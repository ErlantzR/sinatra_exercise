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

get '/cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
  end