$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key        = "Qo3HmeYNMVy9isAGq7fKbamKJ"
  config.consumer_secret     = "xeZqFQSYtiVH7phAsWA38V3DN5SETSgLvhqoeFijJdC3560OHB"
  config.access_token        = Rails.application.secrets.access_token #"101610566-m5hn3IVsx5pHTyuFQChskIff6osM6azO0QvGvxtj" 
  config.access_token_secret = Rails.application.secrets.access_token_secret #"zQfEdexYYBSjvG9yHzNmFtJw34DsXu81Ql8zHuOZkkDoS" 
end








