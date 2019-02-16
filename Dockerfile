FROM vpquant/python-36-numerical

RUN apt-get update \
  && apt install mongodb-server \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN echo "setParameter=textSearchEnabled=true" >> /etc/mongodb.conf
