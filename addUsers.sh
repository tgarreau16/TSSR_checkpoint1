#!/bin/bash


if [ $# -eq "0" ]

        then 
                echo "Fin du script"
                exit
        else
                echo "Les arguments sont bien rentrés" 
                
               for nom_utilisateur in $@
		
		do
			if id $nom_utilisateur &> /dev/null
			then
			echo "Erreur à la création de l'utilisateur"
				
			else
				useradd $nom_utilisateur
				echo "L'utilisateur $nom_utilisateur à été créer"
			fi
		done                
fi


