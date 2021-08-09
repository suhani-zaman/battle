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
get '/named-cat' do
  p params
  @animal_name = params[:name]
  @age = params[:age]
  erb(:index)
end
