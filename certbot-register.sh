if [ -z "$1" ]
  then
    echo "missing domain"
fi

if [[ "$2" == "run" ]]
    docker-compose -f ./deploy-compose.yml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ -d $1
then 
    docker-compose -f ./deploy-compose.yml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d $1
fi
