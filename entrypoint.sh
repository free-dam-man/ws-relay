#!/bin/sh
set -e
: "${UUID:?UUID env required}"
: "${WS_PATH:?WS_PATH env required}"
PORT="${PORT:-10000}"
sed -e "s/PORT_PLACEHOLDER/$PORT/" -e "s/UUID_PLACEHOLDER/$UUID/" -e "s|WS_PATH_PLACEHOLDER|$WS_PATH|" config.json.template > config.json
exec ./xray run -config config.json
