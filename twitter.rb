require 'twitter'
require 'google_drive'
require 'dotenv'
Dotenv.load('script.env',)

session = GoogleDrive::Session.from_config("config.json")
@ws = session.spreadsheet_by_key("1TWu-jicfHUX8vv8iype6G8VS1E3_GuUsmRJEFHhK_L0").worksheets[0]



# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
#client = Twitter::REST::Client.new do |config|
#	client = Twitter::DirectMessage::Client.new do |config|
  config.consumer_key        = ENV['consumer_key']
  config.consumer_secret     = ENV['consumer_secret']
  config.access_token        = ENV['access_token']
  config.access_token_secret = ENV['access_token_secret']
end






topics = [""]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
