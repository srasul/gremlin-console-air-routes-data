# gremlin-console-airport-data
Gremlin console with pre-loaded Air-Routes data (graph) from [Kelvin R. Lawrence's most excellent online book](http://kelvinlawrence.net/book/Gremlin-Graph-Guide.html).

## Wait, what?
I am going through this book to learn the Gremlin language for graph queries and I found it a pain to always have to setup a gremlin console to start querying. So, this is a docker image which has that:
1. a gremlin console
2. pre-loaded graph of the [latest air-routes data](https://github.com/krlawrence/graph/blob/master/sample-data/air-routes-latest.graphml)

## How to use
```
docker pull srasul/gremlin-console-air-routes-data
docker run -it srasul/gremlin-console-air-routes-data:latest
```

for example:
```
$ docker run -it srasul/gremlin-console-air-routes-data:latest
Apr 12, 2020 10:24:01 PM java.util.prefs.FileSystemPreferences$1 run
INFO: Created user preferences directory.

         \,,,/
         (o o)
-----oOOo-(3)-oOOo-----
plugin activated: tinkerpop.server
plugin activated: tinkerpop.utilities
plugin activated: tinkerpop.tinkergraph
gremlin> g
==>graphtraversalsource[tinkergraph[vertices:3742 edges:57574], standard]
gremlin> g.V().groupCount().by(label)
==>[continent:7,country:237,version:1,airport:3497]
```