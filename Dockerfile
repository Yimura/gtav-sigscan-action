FROM ghcr.io/yimura/gtav-sigscan-action

COPY . .

CMD [ "sigscan" ]
