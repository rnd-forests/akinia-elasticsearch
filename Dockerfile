FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.1

MAINTAINER Vinh Nguyen <ngocvinh.nnv@gmail.com>

COPY elasticsearch-analysis-vietnamese-7.3.1.zip /usr/share/elasticsearch

RUN cd /usr/share/elasticsearch \
    && yes | bin/elasticsearch-plugin install analysis-icu \
    && yes | bin/elasticsearch-plugin install file:///usr/share/elasticsearch/elasticsearch-analysis-vietnamese-7.3.1.zip
