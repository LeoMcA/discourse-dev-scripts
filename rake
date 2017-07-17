#!/bin/zsh
PARAMS="$@"
CMD="RUBY_GLOBAL_METHOD_CACHE_SIZE=131072 LD_PRELOAD=/usr/lib/libjemalloc.so bundle exec rake $PARAMS"
e $CMD
