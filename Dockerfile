FROM ghcr.io/xtls/xray-core:latest
WORKDIR /app
COPY config.json.template entrypoint.sh ./
ENTRYPOINT ["sh", "entrypoint.sh"]
