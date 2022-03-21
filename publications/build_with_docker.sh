#!/bin/bash
docker run --rm -it -v $PWD:/home/local --workdir /home/local  dockershelf/latex:full latexmk -pdf
rm *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.run.xml