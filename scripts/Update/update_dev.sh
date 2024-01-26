#!/bin/bash

script_dir=$(dirname "$0")
cd "$script_dir" || exit
cd ../../

# Update the project.
git pull

# Update the dependencies.
sudo chown -R "$USER":"$USER" var/
composer update
sudo chown -R www-data:www-data var/
