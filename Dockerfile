FROM ubuntu:14.04

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        software-properties-common \
        make \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN \
    LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y --force-yes --no-install-recommends \
        php5.5 \
        php5.5-simplexml \
        php5.5-curl \
        php5.5-bcmath \
        php5.5-pgsql \
        php5.5-iconv \
        php5.5-mbstring \
        php5.5-intl \
        php5.5-zip \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*
