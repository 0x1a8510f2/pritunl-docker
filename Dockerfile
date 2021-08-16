FROM ubuntu:groovy

RUN apt-get update && apt-get install -y gnupg && \
  echo "deb https://repo.pritunl.com/stable/apt groovy main" > /etc/apt/sources.list.d/pritunl.list && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A && \
  apt-get update && \
  apt-get install -y pritunl
