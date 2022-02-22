#!/bin/bash
docker run --rm -it -v $PWD:/home/local --workdir /home/local  dockershelf/latex:full make