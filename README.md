# Machine Learning Meetup Kansai #1 Demonstration

This project includes demonstration code for the presentation at [Machine Learning Meetup Kansai #1](https://mlm-kansai.connpass.com/event/81815/) at Apr 4th 2018.

## Prerequisites

* Docker

## Start Jupyter

Build docker image as follows. Don't forget the last `.` (dot). This is required only once.

    docker build -t mlm-kansai-1 .

Then run jupyter notebook like this

    docker run --rm --user root -e NB_UID=$(id -u) -p 8888:8888 -v "$(pwd)/.":/opt/local/work mlm-kansai-1

To debug docker environment, run bash as follows.

    docker run --rm -ti mlm-kansai-1 /bin/bash -l

# References

* [Jupyter Docker Stacks](https://github.com/jupyter/docker-stacks/)
