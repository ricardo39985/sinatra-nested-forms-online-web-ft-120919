require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'pirates/new'
      
    end

    post '/show' do
      @pirate = Pirate.new(params[:pirate])
      @ships = nil
      ship.each do |hash|
        @ships << Ship.new(hash)        
      end
      binding.pry 

    end

  end
end
