
FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl wget git unzip zip nano vim sudo gnupg2 lsb-release ca-certificates software-properties-common \
    python3 python3-pip \
    php php-cli php-mbstring php-xml php-curl php-mysql php-zip php-gd php-bcmath php-soap php-intl php-sqlite3 php-json \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /var/www

EXPOSE 8000 9000

CMD ["/bin/bash"]
