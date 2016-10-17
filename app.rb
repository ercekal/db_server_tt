require "sinatra"
require "sinatra/cookies"

get '/' do
 "Hello world!"
end

get '/set' do
  cookies[:value] = "key"
  redirect to('/')
end

set :port, 4000
