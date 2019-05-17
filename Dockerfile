FROM wordpress:php7.1
MAINTAINER mz32 <info@mz32.dev>

ENV USER wpuser
ENV HOME /home/${USER}
ENV SHELL /bin/bash

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
     && chmod +x wp-cli.phar \
     && mv wp-cli.phar /usr/local/bin/wp \
     && wp --info
     && useradd -m ${USER}
     && gpasswd -a ${USER} sudo
