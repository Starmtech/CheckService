# CheckService
Script en bash permettant de verifier qu'un service est bien executé

Pour l'utiliser modifier la variable liste en indiquant vos différent service 

example:

liste=( "apache2" "mysql" "squid" "proftpd")


Ajouter une tache cron pour executer periodiquement le script                                               

example:

* * * * * /lien-du-script

