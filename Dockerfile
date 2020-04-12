FROM tinkerpop/gremlin-console 

USER root

RUN apk add git curl vim

RUN git clone https://github.com/krlawrence/graph.git

RUN mkdir /mydata && cp graph/sample-data/air-routes-latest.graphml /mydata/air-routes.graphml

ENTRYPOINT ["/docker-entrypoint.sh", "-i", "/opt/gremlin-console/graph/sample-data/load-air-routes-graph-34.groovy"]