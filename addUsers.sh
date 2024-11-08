#!/bin/bash

new_user()
{

nom_utilisateur=0

read -p "Nom du nouvel utilisateur :" nom_utilisateur

if [ -z $nom_utilisateur ] 

  then 
      echo "Il manque les noms d'utilisateurs en argument - Fin du script"

  else 
      while [ -n $nom_utilisateur ]
          do 
              useradd $nom_utilisateur 
              echo "L'utilisateur $nom_utilisateur a été crée" 
              exit 

          done 

fi
}

new_user
