# Overview

This is to avoid installing a global npm package on my host computer.

## How to Use

1. Build the image: `$ docker build -t typescript-tsc:1.0 .`
2. Run a container of the image: `$ docker run typescript-tsc:1.0`

Add alias: `$ alias tsc=docker run typescript-tsc:1.0`

3. Compile a typescript file: `tsc <filepath>`

## References

*  [How to Develop with TypeScript in Docker with Hot Reloading](https://logfetch.com/docker-typescript-development/)
