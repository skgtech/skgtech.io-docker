FROM shawnzhu/ruby-nodejs:4.2.2

MAINTAINER skgtech.io <hello@skgtech.io>

RUN apt-get update

# Install gems
RUN gem install jekyll

# Install npms
RUN npm install -g gulp

WORKDIR /app

# Get the github repo (no need for git)
RUN wget --no-check-certificate https://github.com/skgtech/skgtech.github.io/archive/master.tar.gz && \
    tar zxf master.tar.gz -C /app/skgtech.io && rm -f master.tar.gz

# Install npm packages
WORKDIR /app/skgtech.io
RUN npm install

# Expose ports to host
EXPOSE 3000 3001

#CMD gulp
