## Docker image for skgtech.io

[![](https://badge.imagelayers.io/skgtech/website:latest.svg)](https://imagelayers.io/?images=skgtech/website:latest 'Get your own badge on imagelayers.io')

Image builds: [hub.docker.com/r/skgtech/website/builds/](https://hub.docker.com/r/skgtech/website/builds/)

### About

This is a simple Docker image to help on the development of the [skgtech.io](http://skgtech.io)
website which is hosted on [github.com/skgtech/skgtech.github.io](https://github.com/skgtech/skgtech.github.io).

See more about "Thessaloniki Tech Community" at [skgtech.io](http://skgtech.io).

**Online docker image:** [hub.docker.com/r/skgtech/website](https://hub.docker.com/r/skgtech/website)

### Requirements

 - [docker](https://www.docker.com/)

### Usage

  - Pull the docker image `docker pull skgtech/website`
  - Fork the official repository [github.com/skgtech/skgtech.github.io](https://github.com/skgtech/skgtech.github.io). You can use [hub](https://hub.github.com/) to do this from CLI if you like
  - Clone your own repository locally (skip this if you have used **hub**)
  - Create a new Docker container
  - SSH into the new container and run `gulp`
  - Open http://172.17.0.2:3000 (you will see a site same as http://skgtech.io)
  - Make changes to the code (locally)
  - Commit and push to your repo
  - Create a pull request (online)
  - Get a badge for your support ;-)

### Example of commands

```
// Pull latest docker image
docker pull skgtech/website

// Fork repository https://github.com/skgtech/skgtech.github.io.
// If you are using https://hub.github.com/ you can do this easily like this:
git fork https://github.com/skgtech/skgtech.github.io

// Get into the folder
cd /path/to/skgtech.github.io

// Create a new container (you may need sudo to run docker)
// The files under /path/to/skgtech.github.io are mounted with the docker container files at /app/skgtech.io
// The command bellow will start stat gulp tasks by default
docker run -i -t \
           --name skgtech_container \
           -p 3000:3000 -p 3001:3001 \
           -v `pwd`/_sass:/app/skgtech.io/_sass \
           -v `pwd`/_frontapp:/app/skgtech.io/_frontapp \
           -v `pwd`/_includes:/app/skgtech.io/_includes \
           -v `pwd`/_layouts:/app/skgtech.io/_layouts \
           -v `pwd`/_data:/app/skgtech.io/_data \
           -v `pwd`/assets:/app/skgtech.io/assets \
           skgtech/website

// Open http://172.17.0.2:3000 on your browser
google-chrome http://172.17.0.2:3000

// Make git commits locally under repo at /path/to/skgtech.github.io/

// Create a pull request

// If you want to SSH into the container
docker exec -i -t skgtech_container /bin/bash

```

### License

**MIT**. See more at [LICENSE](https://github.com/skgtech/skgtech.io-docker/blob/master/LICENSE).
