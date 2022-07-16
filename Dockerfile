FROM ghcr.io/yimura/gtav-sigscan-action

COPY . .

ENTRYPOINT [ "bash", "entrypoint.sh"]
