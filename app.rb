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
  @name = params[:name]
  @color = params[:color]
  @surname = params[:surname]
  @age = params[:age]
  @sex = params[:sex]
  erb(:index)
end
