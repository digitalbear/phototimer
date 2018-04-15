docker run --name capture -v /var/www/image/day/back_garden:/var/image --privileged --restart=always -e TZ="Europe/Dublin" -d alexellis2/phototimer:0.1
#docker run --name capture -v /var/image:/var/image --privileged --restart=always -e TZ="Europe/Dublin" -d alexellis2/phototimer:0.1
