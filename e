#!/bin/zsh
PARAMS="$@"
CMD="cd /src && RAILS_ENV=$RAILS_ENV $PARAMS"
sudo docker exec -it -u discourse:discourse $NAME /bin/bash -c "$CMD"
