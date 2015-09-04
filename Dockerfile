FROM ubuntu
RUN apt-get update 
RUN apt-get -y install curl
RUN apt-get -y install git
RUN curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh -s - --yes
RUN multirust default nightly
CMD bash
