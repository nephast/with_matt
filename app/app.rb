require 'sinatra/base'

class Databoss < Sinatra::Base
  get '/' do
    'Hello Databoss!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
