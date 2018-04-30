require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "Hello George"
end

get '/shotgun' do
  "gunsforguns"
end
