FROM i386/debian:stretch

RUN cd /bin && ln -sf bash sh && \
    apt-get update && apt-get install -qq \
    make patch bzip2 && \
    apt-get clean && \
    useradd -s /bin/bash -u 1000 -m user
