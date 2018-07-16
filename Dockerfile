FROM ubuntu:latest

WORKDIR /

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install libedit-dev -y
RUN apt-get install libreadline-dev -y

ENV RACKET_VERSION 6.12
ENV RACKET_INSTALLER_URL http://mirror.racket-lang.org/installers/$RACKET_VERSION/racket-$RACKET_VERSION-x86_64-linux.sh

RUN wget --output-document=racket-install.sh $RACKET_INSTALLER_URL && \
    echo "yes\n1\n" | /bin/bash racket-install.sh && \
    rm racket-install.sh

CMD ["racket"]