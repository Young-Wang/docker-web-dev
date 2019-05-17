FROM node:10.15

ENV WORK_DIR=/workspace 

RUN mkdir $WORK_DIR 

WORKDIR $WORK_DIR

