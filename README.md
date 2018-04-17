# W3D2


    la partie d'introduction qui présenté l'équipe, explique en un paragraphe les grandes lignes du programme, puis comment l'utiliser ($ bundle install)
    une partie qui présente l'équipe qui a travaillé sur le projet
    une partie qui explique l'arborescence du dossier, et l'utilité de tous les programmes
    une partie qui dit comment se servir du programme, et quelles sont les gems utilisées
    une partie qui explique ce qui a été fait : l'email envoyé, le nombre de mairies touchées, le handle Twitter qui a été utilisé

Notre groupe est composé de Guillaume Delory, Ampuero Pierre, Alvarez Alexandro

slack : @guillaume,@Ampuero Pierre,@kalejo

Notre Dossier W3D2 est composé :
  -du dossier bundle install (qui permet de mettre à jour les gems)
  -d'un fichier gitignore (qui permet d'ignorer nos identifiants)
  -d'un fichier Gemfile (qui classe les gems qu'on utilise)
  -du fichier gmail.rb (à partir de sprinsheet d'envoyer les mails aux mairies)
  -handle_twitter.rb (il permet de récupérer les comptes utilisateurs à partir de google et de les incrémenters dans le sprinsheet)
  -mairie.rb (le fichier principal de notre projet qui récupère les noms,adresse mails et code postal pour les insérers dans
  le sprinsheet)
  -twitter.rb (il permet de follows les utilisateurs)
  
Nous avons utilisés les gems :
-pry
-google_drive
-nogiri
-json
-csv
-dotenv

Pour utiliser le programme, il faut installer le bundle afin de récupérer nos versions de gem, il faut ouvrir le fichier
mairies.rb puis de lancer les méthodes qui seront indiquer en commentaire, puis ouvrir le fichier gmail.rb

Le point sur le projet, car il n'est pas terminé à 100% :

- Pour le projet, nous avons utilisés qu'un seul département
- On a reussi à récuperer les noms des villes, adresse mails et le code postal
- Puis de les insérers dans un sprinsheet
- Nous avons créer une méthode pour créer le fichier JSON et le fichier CSV qui récupère le nom de la ville et les adresse mails
- Nous avons réussi à envoyer les mails en récupérant les adresses mails du sprinsheet
- Pour twitter, on a pas reussi à faire
- On a réussi 
