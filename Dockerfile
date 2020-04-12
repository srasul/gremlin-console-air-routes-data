FROM tinkerpop/gremlin-console 

USER root

RUN apk add git curl vim

RUN git clone https://github.com/krlawrence/graph.git

ENTRYPOINT ["/docker-entrypoint.sh"]