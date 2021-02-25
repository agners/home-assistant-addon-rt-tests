#!/usr/bin/env bashio

DURATION="$(bashio::config 'duration')"
sleep 4
set -e
set -x

/usr/bin/cyclictest --priority=90 --duration="${DURATION}" --threads=1 --mlockall --histogram=US
