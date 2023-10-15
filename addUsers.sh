#! /bin/bash

if [ -z $1 ]

then

        echo "Pas de nom d'utilisateurs en argument - Fin du script "

        exit 1

else

        # vérification de l'existence de l'utilisateur

        for nom in "$@"

        do
                if cat /etc/passwd | grep $nom > /dev/null
                
                then

                        # l'utilisateur $@ existe

                        echo "L'utilisateur $nom existe"

                else

                        # création d'un utilisateur     

                        useradd $nom && echo "L'utilisateur $nom a été crée "

                fi

        done

fi

exit 0
