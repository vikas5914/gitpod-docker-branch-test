FROM gitpod/workspace-full

USER root
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
        php-bcmath \
        php-ctype \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*
