#!/bin/bash
echo -e "\nfastcgi_param   DBNAME  $DBNAME;\nfastcgi_param   DBPORT  $DBPORT;\n" >> /etc/nginx/fastcgi_params
