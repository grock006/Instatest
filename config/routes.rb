Rails.application.routes.draw do
  
   get '/map' => 'map#index'
   get '/map/show' => 'map#show'

   get '/' => 'insta#index'
   get '/show'  => 'insta#show'

 
end
