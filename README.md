# W3D2

Notre groupe est composé de Guillaume Delory, Ampuero Pierre, Alvarez Alexandro<br>

slack : @guillaume,@Ampuero Pierre,@kalejo<br>

Notre Dossier W3D2 est composé :<br>
  -du dossier bundle install (qui permet de mettre à jour les gems que l'on retouve dans le dossier Gemfile)<br>
  -d'un fichier gitignore (ou sont compilé nos identifiants dans les fichiers config.json et script.rb)<br>
  -d'un fichier Gemfile (qui classe les gems s'installant avec le bundle install)<br>
  -mairie.rb (le fichier principal de notre projet qui récupère les noms,adresse mails et code postal pour les insérer dans
  le Spreadsheet)<br>
  -du fichier gmail.rb (il permet d'envoyer les mails aux mairies à partir du Spreadsheet)<br>
  -handle_twitter.rb (il permet de récupérer les comptes utilisateurs à partir de google et de les incrémenter dans le Spreadsheet)<br>
  twitter.rb (il permet de follow les utilisateurs)<br>
  
Nous avons utilisés les gems :<br>
-pry<br>
-google_drive<br>
-nogiri<br>
-json<br>
-csv<br>
-dotenv<br>

Pour utiliser le programme, il faut installer bundle dans la console afin de récupérer nos versions de gem, il faut ouvrir le fichier mairies.rb, dans ce fichier, nous avons créer des méthodes pour récuperer les noms des villes, les adresses mails ainsi que les codes postaux puis nous avons créer une méthode afin de les insérer dans un Spreadsheet qui est accessible à cette adresse https://docs.google.com/spreadsheets/d/1TWu-jicfHUX8vv8iype6G8VS1E3_GuUsmRJEFHhK_L0/edit?usp=sharing, nous avons créer les méthodes pour inserer les données dans un fichiers JSON et CSV. Puis ouvrir le fichier gmail.rb, qui permet d'envoyer les mails en récupérant les adresses mails depuis le Spreadsheet. Pours nos deux fichiers twitter, nous avons créer une structure, mais trop peu de villes possédent un compte twitter.<br>

Le point sur le projet, car il n'est pas terminé à 100% :<br>

- Pour le projet, nous avons utilisés qu'un seul département<br>
- On a reussi à récuperer les noms des villes, adresse mails et le code postal puis de les insérers dans un Spreadsheet<br>
- Nous avons créer une méthode pour créer le fichier JSON et le fichier CSV qui récupère le nom de la ville et les adresse mails<br>
- On a réussi à envoyer les mails en récupérant les adresses mails du Spreadsheet(environ 220 mails envoyés ce jour.<br>
- Pour twitter, trop peu de compte twitter récupérer grace à notre méthode.<br>

<h4>Bon courage pour la correction</h4>


