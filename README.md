be-coach

Pour l'�quipe Int�gration : 

Une fois situ� dans le dossier du projet : 

bundle install 
> Permet d'installer les gems

rails server
> Lance le serveur en local

rake db:migrate
> Permet d'importer la database

Puis 0.0.0.0:3000 ou localhost:3000 dans le navigateur pour acc�der au local

N'oubliez pas de faire la commande 'git pull' dans le dossier du projet pour r�cup�rer les derni�res modifications ajout�es

Pour mettre les modifs sur le serveur GitHub : 

git commit -am "commentaire_du_commit"
> Cr�er le commit. En nom de commit mettre un nom court et pertinent. On r�pond � la question "Pourquoi ?" dans le commentaire (exemple : vous avez modifi� le css concernant un bug d'affichage au hover des liens, la commande sera 'git commit -am "Hover links fix"').

git push
> Envoie toutes les modifications sur le github


Pour l'�quipe Dev : 

foreman start
> Lancer le serveur

Consulter la doc des gems
> http://rubydoc.info/gems/***laGem***
=======
foreman start pour lancer le serveur local

3 KEYS dans le .env : 
FACEBOOK_APP_ID
FACEBOOK_KEY
FACEBOOK_CALLBACK_URL

Pour les remplir, se baser sur le .env.exemple
Prendre les cl�s dans le Facebook Developpers

========
Erreurs connues : 

Erreur execjs runtime error sur windows 8 : installer nodeJS pour r�soudre le probl�me.

========
