FROM ubuntu:latest

RUN apt-get update && apt-get upgrade

Run apt install fortune-mod cowsay netcat-openbsd -y

WORKDIR /app

COPY . wisecow.sh

RUN chmod +x wisecow.sh

ENV PATH="/usr/games:$PATH"

EXPOSE 4499

CMD ["./wisecow.sh"]
