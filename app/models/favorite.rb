class Favorite
  include Mongoid::Document
  field :name, type: String
  field :username, type: String
  field :profile_url, type: String
  field :main_url, type: String
  field :text, type: String
end
