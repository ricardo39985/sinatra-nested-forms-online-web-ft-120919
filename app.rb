require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |hash|

        @ships << Ship.new(hash) 
      end
      erb :'pirates/show'
    end

    get '/new' do
      erb :'pirates/new'
    end

  end
end
