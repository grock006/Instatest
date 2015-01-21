class MapController < ApplicationController
  def index
  	@lat = 37.739624
  	@lng = -119.576333
  end

  def show

    @address =(params[:address])
    @a = Geokit::Geocoders::GoogleGeocoder.geocode @address
    @lat = @a.lat
    @lng = @a.lng 

    if @lat == nil || @lng == nil
      redirect_to "/map"
    else
    #instagram
    @client = Instagram.client
    @images = @client.media_search(@lat, @lng)
    @image_one = @images[0]
    @image_two = @images[1]
    @image_three = @images[2]
    @image_four = @images[3]
    @image_five = @images[4]
    @image_six = @images[5]


    #twitter
    @tweets = $twitter.search("*", geocode: "#{@lat},#{@lng},10mi", lang: "en").take(3)    
    @tweet_two = $twitter.search("*", geocode: "#{@lat},#{@lng},10mi", lang: "en").take(1)
    if @tweets[2].text != nil
        @tweet_one = @tweets[2]
      else
        @tweet_one = @tweets[3]
    end

    #Yelp
    coordinates = { latitude: @lat, longitude: @lng }
    @response = $y.search_by_coordinates(coordinates)
    if coordinates == nil
      redirect_to "/map"
    else
    @yelp = @response.businesses.take(1)
    end
  end

  end

end
