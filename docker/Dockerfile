FROM archlinux:base-devel AS build
RUN pacman -Syy && pacman -S cmake git --noconfirm

WORKDIR /app
COPY . .
RUN cmake . && cmake --build . --config Release -j

FROM archlinux:base AS deploy

WORKDIR /usr/local/bin
COPY --from=build /app/src/sigscan .
RUN chmod +x ./sigscan

WORKDIR /app

COPY ./entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT sigscan $INPUT_FILE
