# docker-utils

A utility image based on the core [docker](https://hub.docker.com/_/docker/) image
with docker compose and other utils added. I'm trying the
[3 Musketeers](https://3musketeers.io) pattern so this is pretty much a copy of
their [flemay/musketeers](https://hub.docker.com/r/flemay/musketeers/dockerfile)
utility image that I've customised with the tools I need.

Run `make shell` to build and shell into the image or `make test` to see the versions
of included utilities.

This is intended to replace the utility "docker" image included in my
[Toolkit](https://github.com/sgdan/toolkit) project which uses the 3 musketeers pattern
to run Portainer, Concourse, Rancher 2.
