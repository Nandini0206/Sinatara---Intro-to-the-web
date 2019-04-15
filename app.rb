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
  "<div style='border: 3px dashed red;width:300px;'>
    <img style='width: 100%;' src='http://bit.ly/1eze8aE'>
   </div>"
end
