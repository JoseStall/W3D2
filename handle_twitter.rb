require 'rubygems'
require "nokogiri"
require "open-uri"
require "google_drive"
require 'json'


#Ici, on connecte google API et on déclare ws en variable absolue avec le @
session = GoogleDrive::Session.from_config("config.json")
@ws = session.spreadsheet_by_key("1TWu-jicfHUX8vv8iype6G8VS1E3_GuUsmRJEFHhK_L0").worksheets[0]

for  x in 2..220 do 

z = "https://www.google.fr/search?q=twitter+commune+" + @ws[x,2] 

	doc = Nokogiri::HTML(open(z))
	doc.css("div/h3").each do |element|
		if element.text.include? "@"
			 @ws[x,4] = element.text 
			 @ws.save
		end

	end

end
@ws[1,4] = "handle twitter"

