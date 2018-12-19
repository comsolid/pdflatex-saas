FROM       ubuntu:16.04
MAINTAINER Átila Camurça <camurca.home@gmail.com>, Samir Coutinho <samirfor@gmail.com>

ENV DEBIAN_FRONTEND "noninteractive"
ARG INSTALL_EXTRA_PACKAGES

WORKDIR /opt/pdflatex

COPY package.json .

RUN set -xe && \
    # install texlive
    apt-get update -qqy && \
    apt-get install -y --no-install-recommends \
        curl \
        ca-certificates \
        nodejs-legacy \
        npm \
        ghostscript \
        texlive-latex-base \
        texlive-latex-extra \
        ${INSTALL_EXTRA_PACKAGES}

COPY index.js .

# install app files
RUN npm install

# copy useful files 
COPY *.cls ./
COPY *.bst ./
COPY *.sty ./
COPY *.eps ./
COPY *.bib ./

EXPOSE 5050

ENTRYPOINT ["node", "/opt/pdflatex/index.js"]
