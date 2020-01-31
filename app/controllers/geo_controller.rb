class GeoController < ApplicationController
  def findaddress
    @address = Geo.address([params[:latitude], params[:longitude]])
  end
end
