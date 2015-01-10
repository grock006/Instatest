class InstaController < ApplicationController

  def index
  	@client = Instagram.client
    @location = @client.media_search("37.745795", "-119.590411")
    @lo_images = @location.first(20)

    @test = @client.location_search("34.108372", "-118.270530", 5000)
    @test_two = @client.location_recent_media(49846142)
  end

  def show
  	#@remote = Songkickr::Remote.new("0QzVJaHpK8qTeyRY")
    #@result = (params[:location]).delete("0123456789")
    #@results = @remote.venue_search(@result).results 
    @client = Instagram.client
    @lat = (params[:lat])
    @long =(params[:long])
    #@images = @client.tag_recent_media(@result)
    @images = @client.media_search(@lat, @long)
  end

end
