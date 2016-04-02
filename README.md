## Docker image for skgtech.io

### About

This is a simple Docker image to help on the development of the [skgtech.io](http://skgtech.io)
website which is hosted on [github.com/skgtech/skgtech.github.io](https://github.com/skgtech/skgtech.github.io).

See more about "Thessaloniki Tech Community" at [skgtech.io](http://skgtech.io)

**Online docker image:** [hub.docker.com/r/tplcom/skgtech.io](https://hub.docker.com/r/tplcom/skgtech.io/)

### Requirements

 - [docker](https://www.docker.com/)

### Usage

  - Fork the official repository [github.com/skgtech/skgtech.github.io](https://github.com/skgtech/skgtech.github.io)
  - Clone your own repository locally
  - Create a new Docker container
  - Open url http://172.17.0.2:3000
  - Make changes to the code
  - Commit and push to your repo
  - Create a pull request
  - Get a badge for your support ;-)

### Example of commands

```
// Clone the repository
git clone https://github.com/<YOUR_GITHUB_NAME>/skgtech.github.io
cd skgtech.github.io
docker run -t -d -p 3000:3000 -p 3001:3001 -v `pwd`:/app/skgtech.io skgtech/site gulp
// Open url http://172.17.0.2:3000
...

```
