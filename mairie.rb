# On appelle ici les GEM dont on a besoin
require 'rubygems'
require "nokogiri"
require "open-uri"
require "google_drive"
require 'json'
require "csv"

#Ici, on connecte google API et on déclare ws en variable absolue avec le @
session = GoogleDrive::Session.from_config("config.json")
@ws = session.spreadsheet_by_key("1S3sTXhAIRYT8znscsT4BiZBRy1Vi7Jw0jZQKvET2hIc").worksheets[0]


def get_all_the_urls_of_city
	doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/nord.html'))
	doc.css("td a.lientxt").each do |element|
		puts element.text
		puts "http://annuaire-des-mairies.com" + element["href"]
	end
end

#get_all_the_urls_of_city

def get_email_corp(page_url)
	@x = []
	@y = []
	$administration = Hash.new
	doc = Nokogiri::HTML(open(page_url))
	doc.css("td a.lientxt").each do |element|
		@x << ville = element.text.capitalize
		doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com" + element["href"]))
		@y << lien = doc.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
		

	end
	@x.each_with_index {|k,v| $administration[k] = @y[v]}
end

#get_email_corp("http://annuaire-des-mairies.com/nord.html")

def put_it_in_spreadsheet
	get_email_corp("http://annuaire-des-mairies.com/nord.html")

	@ws[1,1] = "Ville"
	@ws[1,2] = "Adresse Email"
	@ws[1,3] = "Code postal"

	for z in 0..@x.length
		@ws[z+2,1] = @x[z]
		@ws[z+2,2] = @y[z]
		@ws[z+2,3] = "69"
 	end

	@ws.save

end

put_it_in_spreadsheet


def put_it_in_json
	get_email_corp("http://annuaire-des-mairies.com/nord.html")


	File.open("mairie.json","w") do |f|
		f.write($administration.to_json)
	end
end

#put_it_in_json

def put_it_in_csv
	get_email_corp("http://annuaire-des-mairies.com/nord.html")

	File.write("mairie.csv", $administration.map(&:to_csv).join)

end

#put_it_in_csv

