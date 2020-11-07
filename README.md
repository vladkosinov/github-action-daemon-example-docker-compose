# Example github-action-daemon with docker-compose

## Disclaimer ⚠️⚠️⚠️

Running a daemon as a server and accessing it from outside the VM is not within the terms of use for Actions. 

This package just a demonstration of an easy way of running applications using GitHub Actions and not intended to be used by anyone.

Please don't do this.


This example:
- runs `awesome-compose/react-rust-postgres` from [docker/awesome-compose](https://github.com/docker/awesome-compose) using [github-action-daemon](https://github.com/vladkosinov/github-action-daemon)
- exposes public URL with localtunnel, check [localtunnel-live.sh](https://github.com/vladkosinov/github-action-daemon-example-docker-compose/blob/main/localtunnel-live.sh)


Live url: https://plastic-mouse-4.loca.lt

