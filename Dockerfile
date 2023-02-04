FROM ubuntu:22.04

USER root

# Install packages without prompting the user to answer any questions
ENV DEBIAN_FRONTEND noninteractive

# install basic tools
RUN sed -i 's/http:\/\/archive/http:\/\/us.archive/g' /etc/apt/sources.list \
    && apt-get update && apt-get install -y --no-install-recommends \
      build-essential \
      cmake \
      ; \
      rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
CMD ["/bin/bash"]
