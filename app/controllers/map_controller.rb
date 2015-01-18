class MapController < ApplicationController
  def index
  	@lat = 37.739624
  	@lng = -119.576333
    #put in a fade in and out of various street views, go through array
  end

  def show
  	@client = Instagram.client

    @address =(params[:address])
    @a = Geokit::Geocoders::GoogleGeocoder.geocode @address
    @lat = @a.lat
    @lng = @a.lng 

    
    @images = @client.media_search(@lat, @lng)
    @image_one = @images[0]
    @image_two = @images[1]
    @image_three = @images[2]
    @image_four = @images[3]
    @image_five = @images[4]
    @image_six = @images[5]

    #Twitter
    @tweets = $twitter.search("*", geocode: "#{@lat},#{@lng},10mi", lang: "en").take(3)    
    
    if @tweets[2].text != nil
        @tweet_one = @tweets[2]
      else
        @tweet_one = @tweets[3]
    end

    @tweet_two = $twitter.search("*", geocode: "#{@lat},#{@lng},10mi", lang: "en").take(1)


  end

end
