## Projet smartauth

C'est le serveur qui distribue l'application.

- Gère la sécurité 
  
  connexion (token JWT), habilitations sur les articles, etc ...
  

- Gère les routes des API de l'appli Angular.


Le middleware ``isConnected()`` effectue le contrôle du token.


Les routes d'API sont gérées dans : 
- `./routes/article`   ->   APIs de gestion articles
- `./routes/auth`   ->   APIs de gestion de l'inscription et la connexion utilistateur.
