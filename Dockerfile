FROM crystallang/crystal

RUN apt-get update && \
    apt-get install -y git
    
RUN git clone https://github.com/takanotume24/gj.git
WORKDIR gj
RUN shards build
