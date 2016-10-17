require "sinatra/base"


class DBTest < Sinatra::Base

  set :port, 4000

  get '/' do
   "Hello world!"
  end

  get '/set' do
    list = params.to_s
    "your params are #{list}"
  end

  get '/get/?' do
    erb request.cookies['foo']
  end

  run! if app_file == $0
end
