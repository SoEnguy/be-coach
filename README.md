be-coach

Pour l'équipe Intégration : 

Une fois situé dans le dossier du projet : 

bundle install 
> Permet d'installer les gems

rails server
> Lance le serveur en local

rake db:migrate
> Permet d'importer la database

Puis 0.0.0.0:3000 ou localhost:3000 dans le navigateur pour accéder au local

N'oubliez pas de faire la commande 'git pull' dans le dossier du projet pour récupérer les dernières modifications ajoutées

Pour mettre les modifs sur le serveur GitHub : 

git commit -am "commentaire_du_commit"
> Créer le commit. En nom de commit mettre un nom court et pertinent. On répond à la question "Pourquoi ?" dans le commentaire (exemple : vous avez modifié le css concernant un bug d'affichage au hover des liens, la commande sera 'git commit -am "Hover links fix"').

git push
> Envoie toutes les modifications sur le github


Pour l'équipe Dev : 

foreman start
> Lancer le serveur

Consulter la doc des gems
> http://rubydoc.info/gems/***laGem***

========
Erreurs connues : 

Erreur execjs runtime error sur windows 8 : installer nodeJS pour résoudre le problème.

========
