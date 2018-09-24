FROM rocker/rstudio-stable:3.4.0

USER root

RUN apt-get update && \
    apt-get install -y \
    fonts-dejavu \
    tzdata \
    apt-utils \
    gfortran \
    libnlopt-dev \
    build-essential \
    libcurl4-gnutls-dev \
    libxml2-dev \
    libssl-dev \ 
    zlib1g-dev \
    libnlopt-dev \
    r-base-dev \
    gcc && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD r-packs.R /rstudio/
WORKDIR /rstudio
RUN Rscript r-packs.R