be-coach

Pour l'�quipe Int�gration : 

Une fois situ� dans le dossier du projet : 

bundle install 
> Permet d'installer les gems

rails server
> Lance le serveur en local

rake db:migrate
>Permet d'importer la database

Puis 0.0.0.0:3000 ou localhost:3000 dans le navigateur pour acc�der au local

N'oubliez pas de faire la commande 'git pull' dans le dossier du projet pour r�cup�rer les derni�res modifications ajout�es

Pour push : 

Si vous avez ajout� de nouveaux fichiers (sinon sauter la premi�re commande) : 
git add *

git commit -am "nom_du_commit"
> Cr�er le commit. En nom de commit mettre un nom court et pertinent. (exemple : vous avez modifi� le css concernant les users, la commande sera 'git commit -am "css users"')

git push
> Envoie toutes les modifications sur le github


Pour l'�quipe Dev : 

foreman start pour lancer le serveur local

3 KEYS dans le .env : 
FACEBOOK_APP_ID
FACEBOOK_KEY
FACEBOOK_CALLBACK_URL



========
Erreurs connues : 

Erreur execjs runtime error sur windows 8 : installer nodeJS pour r�soudre le probl�me.

========
