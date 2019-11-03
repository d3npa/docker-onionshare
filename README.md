# docker-onionshare
Docker instance for OnionShare

I run some machines not supported by OnionShare. 
Instead of building it on every machine, I figured having a docker container would be convenient.
If you find this useful, great! If not, that's cool too.

## Prerequisites
- Docker (Linux)

## How to build
It's pretty straight forward. Note CLI options are not supported at the moment. I'm a docker n00b.
```
git clone https://github.com/d3npa/docker-onionshare.git && cd docker-onionshare
docker build -t d3npa:onionshare .
```

## How to run
The image runs `onionshare` on the `tmp` directory, so make sure to map something there! 
```
docker run -ti -v `pwd`:/tmp d3npa:onionshare
```
