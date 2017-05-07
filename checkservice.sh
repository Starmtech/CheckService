#!/bin/bash

liste=( "apache2" "mysql")
log=("/var/log/checkservice.log")
heure=$(date +%H:%M:%S)
jour=$(date +%d/%m/%Y)
horodatage=("$heure $jour")

if [ -f $log ];
then
   echo "$horodatage : Le fichier de log éxiste !";
else
  touch $log
  echo "$horodatage: Création du fichier de log";
fi

for service in "${liste[@]}"
do
   if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ));
   then
      echo "$horodatage : service $service exécuté!!!"  >> $log;
   else
      echo "$horodatage : service $service stoppé lancement de $service!!!"  >> $log;
      /etc/init.d/$service start
   fi
done
