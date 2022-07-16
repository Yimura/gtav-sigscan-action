FROM ghcr.io/yimura/gtav-sigscan-action

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
