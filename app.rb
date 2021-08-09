require 'sinatra'
require "sinatra/reloader" if development?
get '/' do
  "hello!"
end

get '/secret' do
  "how are you?"
end
get '/public' do
  "HOW DARE YOU?"
end

get '/cat' do
  erb(:index)
end