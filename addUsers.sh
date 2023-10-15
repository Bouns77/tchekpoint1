#! /bin/bash

if [ -z $@ ]

then

        echo "Pas de nom d'utilisateurs en argument - Fin du script "

        exit 1

else

        # vérification de l'existence de l'utilisateur

        if cat /etc/passwd | grep $@ > /dev/null

        then

                # l'utilisateur $@ existe

                echo "L'utilisateur $@ existe"

  
        else
                for nom in "$@"

                do

                # création d'un utilisateur     

                useradd $nom && echo "L'utilisateur $nom a été crée "

                done

        fi

fi

exit 0



