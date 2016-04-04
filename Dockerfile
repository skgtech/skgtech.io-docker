FROM shawnzhu/ruby-nodejs:4.2.2

MAINTAINER skgtech <hello@skgtech.io>

#RUN apt-get update

# Install gems
RUN gem install jekyll -v '3.1.2'

WORKDIR /app

# Get the github repo (no need for git)
RUN wget --no-check-certificate https://github.com/skgtech/skgtech.github.io/archive/master.tar.gz && \
    tar -zxvf master.tar.gz && \
    mv /app/skgtech.github.io-master/ /app/skgtech.io/ && \
    rm -rf /app/skgtech.github.io-master && \
    rm -f master.tar.gz

# Install app npm packages
RUN mkdir -p /dist/node_modules && \
    mkdir -p /dist/_site && \
    ln -s /dist/node_modules /app/skgtech.io/node_modules && \
    ln -s /dist/_site /app/skgtech.io/_site && \
    cd /app/skgtech.io && \
    npm install

WORKDIR /app/skgtech.io

# Expose ports to host
EXPOSE 3000 3001

ENTRYPOINT /app/skgtech.io/node_modules/.bin/gulp
