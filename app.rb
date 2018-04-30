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

get '/cat' do
  "<div>
    <img style='border: 3px dashed red' align='middle' src='http://bit.ly/1eze8aE'>
   </div>"
end
