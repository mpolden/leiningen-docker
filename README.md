# leiningen-docker

Dockerfile for running [Leiningen](https://github.com/technomancy/leiningen).

## Usage

1. Build the image:

    `docker build -t martinp/leiningen .`

2. Run repl:

    `docker run -i -t martinp/leiningen lein repl`
