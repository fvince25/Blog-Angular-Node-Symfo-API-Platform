# Projet SMARTENGO

## Décomposition du projet

Ce projet se décompose en 3 parties :

- Projet Front. (développé en Angular)

- Projet Back smartauth (dévelopé en nodejs)

- Projet Back smartapi (développé en php / Symfony)

D'autres Readme.md au sein de chaque projet présentent plus en détail chaque projet.


L'application Angular (dossier public) est distribuée par le serveur node (server / smartauth).
Le dossier client ne contient que les "sources" Angular

Le serveur node accède aux API du serveur "métier" en symfony (server / smartapi).



## Pour tester l'appli :

Prérequis à l'installation 
installer Nodejs, composer et symfony

- Ouvrir un terminal sur le dossier server / smartauth : lancer la commande
  ``npm install`` puis ``npm start``
  

- Ouvrir un terminal sur le dossier server / smartauth : lancer la commande 
  ``composer install`` puis ``symfony serve``


- Charger le dump Mysql dans dump server / dum Mysql / smartapi.sql


- Ouvrir un navigateur Web :
saisir l'URL :
http://localhost:3000







