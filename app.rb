require 'sinatra'
require "sinatra/reloader" if development?
set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'This is a secret message!!!'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample 
  erb(:index)
end
