require 'sinatra'
require "sinatra/reloader" if development?
get '/' do
  "hello!"
end

get '/secret' do
  "how are you?"
end
get '/public' do
  "What are you doing?"
end

get '/random-cat' do
  @animal_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/cat-form' do
  #@name = params[:name]
  erb :catform
end
post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end