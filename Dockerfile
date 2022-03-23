FROM node:16-buster-slim

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends -y \
    ttfautohint curl file

COPY run.sh /run.sh

WORKDIR /build
ENTRYPOINT ["/bin/bash", "/run.sh"]
