#!/bin/zsh
PARAMS="$@"
CMD="cd /src && RAILS_ENV=$RAILS_ENV LOAD_PLUGINS=$LOAD_PLUGINS $PARAMS"
sudo docker exec -it -u discourse:discourse $NAME /bin/bash -c "$CMD"
