require "sinatra/base"


class DBTest < Sinatra::Base

  set :port, 4000
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
   "Hello world!"
  end

  get '/set' do
    key = params.flatten[0]
    value = params.flatten[1]
    session[key] = value
    "key is #{key} and value is #{value} and #{params}"
  end

  get '/get' do
    value = params.flatten[1]
      "#{session[value]}"
  end

  run! if app_file == $0
end
