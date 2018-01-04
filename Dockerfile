FROM i386/debian:stretch

RUN cd /bin && ln -sf bash sh && \
    apt-get update && apt-get install -qq \
    gcc make bzip2 patch && \
    apt-get clean && \
    useradd -s /bin/bash -u 1000 -m user
