class MapController < ApplicationController
  def index
  	@lat = 37.739624
  	@long = -119.576333
  end

  def show
  	@client = Instagram.client
    @lat = (params[:lat])
    @long =(params[:long])
    #@images = @client.tag_recent_media(@result)
    @image = @client.media_search(@lat, @long)
    @images = @image.first(3)
  end
end
