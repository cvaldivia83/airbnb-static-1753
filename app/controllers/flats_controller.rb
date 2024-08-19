require "open-uri"
require "json"

class FlatsController < ApplicationController
  def index 
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @condos = JSON.parse(URI.open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @condos = JSON.parse(URI.open(url).read) 
    id = params[:id].to_i
    @condo = @condos.select do |condo|
      condo["id"] == id
    end
    @condo = @condo.first
  
  end
end
