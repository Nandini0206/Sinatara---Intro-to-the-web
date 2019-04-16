require 'sinatra'
require "sinatra/reloader" if development?
set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'This is a secret message!!!'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p @name = params[:name]
  erb(:index)
end
