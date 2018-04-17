require 'gmail'
require 'dotenv'
require 'pry'
require "google_drive"
Dotenv.load('gmail.env')

gmail = Gmail.connect!(ENV['username'],ENV['password'])

session = GoogleDrive::Session.from_config("config.json")
@ws = session.spreadsheet_by_key("1TWu-jicfHUX8vv8iype6G8VS1E3_GuUsmRJEFHhK_L0").worksheets[0]

mail = []
b = @ws[2,5]
for x in 2..220 do
	mail << @ws[x,2] 
end

mairie = []
for y in 2..220 do
	mairie << @ws[y,1]
end


for z in 0..mail.length do
	gmail.deliver do
	  to mail[z]
	  subject "Présentation de The Hacking Project"
	  text_part do
	    body "Text of plaintext message."
	  end
	  html_part do
	    content_type 'text/html; charset=UTF-8'
	    body "<p>Bonjour,</p>

		<p>	Nous sommes des élèves de <b>The Hacking Project.<br></b>
		Une formation au code gratuite:
		<ul>
			<li>sans locaux</li>
			<li>sans sélection</li>
			<li>sans restriction géographique</li><br>
		</ul>	
			La pédagogie de notre école est celle du <u>peer-learning</u>, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code.<br>
			Le projet du jour est d'envoyer <b>(avec du codage)</b> des emails aux mairies pour qu'ils nous aident à faire de <b>The Hacking Project</b> un nouveau format d'éducation pour tous.<br>
			Déjà 300 personnes sont passées par <b>The Hacking Project</b><br>
			Est-ce que la mairie de #{mairie[z]} veut changer le monde avec nous ?<br>
			<em>Charles, co-fondateur</em> de <b>The Hacking Project</b> pourra répondre à toutes vos questions : <b>06.95.46.60.80</b></p>"
	  end
	 
	end
end
