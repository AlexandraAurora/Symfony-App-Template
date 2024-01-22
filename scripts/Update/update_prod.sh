#!/bin/bash

scriptDir=$(dirname "$0")
cd "$scriptDir" || exit
cd ../../

git pull
composer update

composer dump-env prod
composer dump-autoload --no-dev --classmap-authoritative

composer auto-scripts
sudo chown -R www-data:www-data var/
