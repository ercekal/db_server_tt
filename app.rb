require "sinatra/base"


class DBTest < Sinatra::Base

  set :port, 4000

  saving = {}

  get '/' do
   "Hello world!"
  end

  get '/set' do
    saving.merge!(params)
    "#{saving}"
  end

  get '/get' do
    key = params.flatten[0]
    value = params.flatten[1]
    "#{saving[value]}"
  end

  run! if app_file == $0
end
