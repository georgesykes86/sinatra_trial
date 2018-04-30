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

get '/random-cat' do
  @name = %w(Amigo Viking Oscar).sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name] + params[:othername]
  @color = params[:color]
  erb(:index)
end
