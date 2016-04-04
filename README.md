## Docker image for skgtech.io

### About

This is a simple Docker image to help on the development of the [skgtech.io](http://skgtech.io)
website which is hosted on [github.com/skgtech/skgtech.github.io](https://github.com/skgtech/skgtech.github.io).

See more about "Thessaloniki Tech Community" at [skgtech.io](http://skgtech.io).

**Online docker image:** [hub.docker.com/r/skgtech/website](https://hub.docker.com/r/skgtech/website)

### Requirements

 - [docker](https://www.docker.com/)

### Usage

  - Pull the docker image `git pull skgtech/website`
  - Fork the official repository [github.com/skgtech/skgtech.github.io](https://github.com/skgtech/skgtech.github.io). You can use [hub](https://hub.github.com/) to do this from CLI if you like
  - Clone your own repository locally (skip this if you have used **hub**)
  - Create a new Docker container
  - Open http://172.17.0.2:3000 (you will see a site same as http://skgtech.io)
  - Make changes to the code
  - Commit and push to your repo
  - Create a pull request
  - Get a badge for your support ;-)

### Example of commands

```
// Pull latest docker image
git pull skgtech/website

// Fork repository https://github.com/skgtech/skgtech.github.io.
// If you are using https://hub.github.com/ you can do this easily like this:
git fork https://github.com/skgtech/skgtech.github.io

// Get into the folder
cd /path/to/skgtech.github.io

// Create a new container
// The files under /path/to/skgtech.github.io are mounted with the docker container files at /app/skgtech.io
docker run -t -d -p 3000:3000 -p 3001:3001 -v `pwd`:/app/skgtech.io skgtech/website

// Open http://172.17.0.2:3000 on your browser

// Make git commits locally under repo at /path/to/skgtech.github.io/

// Create a pull request

```

### License

**MIT**. See more at [LICENSE](LICENSE).
