#! /bin/sh
cd $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
docker run -it --rm -v `pwd`:/tmp syon/wiki /bin/bash docker-script.sh
