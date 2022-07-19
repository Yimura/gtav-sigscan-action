FROM ghcr.io/yimura/gtav-sigscan-action

COPY . .

ENTRYPOINT [ "bash", "/app/entrypoint.sh"]
