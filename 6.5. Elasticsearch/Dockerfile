#FROM centos:7
#MAINTAINER Andrej Sarajkin <a.sarajkin@trs58.ru>

#RUN yum install wget -y
#RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.0.1-linux-x86_64.tar.gz && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.0.1-linux-x86_64.tar.gz.sha512
#RUN yum install perl-Digest-SHA -y
#RUN shasum -a 512 -c elasticsearch-8.0.1-linux-x86_64.tar.gz.sha512 && tar -xzf elasticsearch-8.0.1-linux-x86_64.tar.gz
#RUN cd elasticsearch-8.0.1/
#RUN rm -f elasticsearch-8.0.1-linux-x86_64.tar.gz

#ADD elasticsearch.yml /elasticsearch-8.0.1/config/

#CMD ["/elasticsearch-8.0.1/bin/elasticsearch"]


#EXPOSE 9200
#CMD sed -i `s|#node.name:\ node-1|node.name:\ netology_test` /elasticsearch-8.0.1/config/elasticsearch.yml

# Pull base image.
#FROM centos:centos7

#MAINTAINER Andrej Sarajkin <a.sarajkin@trs58.ru>

#ENV ES_PKG_NAME elasticsearch-7.15.2

#ENV PATH=/usr/lib:/usr/lib/jvm/jre-11/bin:$PATH

#RUN groupadd -g 1000 elasticsearch && useradd elasticsearch -u 1000 -g 1000

#RUN yum makecache && \
#    yum -y install wget \
#    yum -y install perl-Digest-SHA


# Install Elasticsearch.
#RUN \
#  cd / && \
#  wget https://artifacts.elastic.co/downloads/elasticsearch/$ES_PKG_NAME-linux-x86_64.tar.gz && \
#  wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.15.2-linux-x86_64.tar.gz.sha512 && \
#  shasum -a 512 -c elasticsearch-7.15.2-linux-x86_64.tar.gz.sha512 && \
#  tar -xzf $ES_PKG_NAME-linux-x86_64.tar.gz && \
#  rm -f $ES_PKG_NAME-linux-x85_64.tar.gz && \
#  mv /$ES_PKG_NAME /elasticsearch

#RUN mkdir /var/lib/logs /var/lib/data

#COPY elasticsearch.yml /elasticsearch/config

#RUN chmod -R 777 /elasticsearch && \
#    chmod -R 777 /var/lib/logs && \
#    chmod -R 777 /var/lib/data

#USER elasticsearch
# Define default command.
#CMD ["/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
#EXPOSE 9200
#EXPOSE 9300

FROM centos:7
MAINTAINER Andrej Sarajkin <a.sarajkin@trs58.ru>

ENV PATH=/usr/lib:/usr/lib/jvm/jre-11/bin:$PATH

RUN yum install java-11-openjdk -y
RUN yum install wget -y
RUN yum install perl-Digest-SHA -y

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.0.1-linux-x86_64.tar.gz \
    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.0.1-linux-x86_64.tar.gz.sha512
RUN shasum -a 512 -c elasticsearch-8.0.1-linux-x86_64.tar.gz.sha512 \
    && tar -xzf elasticsearch-8.0.1-linux-x86_64.tar.gz
RUN cd elasticsearch-8.0.1/
RUN rm -f elasticsearch-8.0.1-linux-x86_64.tar.gz

ADD elasticsearch.yml /elasticsearch-8.0.1/config/
ENV JAVA_HOME=/elasticsearch-8.0.1/jdk/
ENV ES_HOME=/elasticsearch-8.0.1

RUN groupadd elasticsearch && useradd -g elasticsearch elasticsearch

RUN mkdir /var/lib/logs \
    && chown elasticsearch:elasticsearch /var/lib/logs \
    && mkdir /var/lib/data \
    && chown elasticsearch:elasticsearch /var/lib/data \
    && chown -R elasticsearch:elasticsearch /elasticsearch-8.0.1/
RUN mkdir /elasticsearch-8.0.1/snapshots &&\
    chown elasticsearch:elasticsearch /elasticsearch-8.0.1/snapshots

USER elasticsearch

CMD ["/usr/sbin/init"]
CMD ["/elasticsearch-8.0.1/bin/elasticsearch"]



#RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.11.1-linux-x86_64.tar.gz \
#    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.11.1-linux-x86_64.tar.gz.sha512
#RUN yum install perl-Digest-SHA -y
#RUN shasum -a 512 -c elasticsearch-7.11.1-linux-x86_64.tar.gz.sha512 \
#    && tar -xzf elasticsearch-7.11.1-linux-x86_64.tar.gz \
#    && yum upgrade -y

#ADD elasticsearch.yml /elasticsearch-7.11.1/config/
#ENV JAVA_HOME=/elasticsearch-7.11.1/jdk/
#ENV ES_HOME=/elasticsearch-7.11.1
#RUN groupadd elasticsearch \
#    && useradd -g elasticsearch elasticsearch

#RUN mkdir /var/lib/logs \
#    && chown elasticsearch:elasticsearch /var/lib/logs \
#    && mkdir /var/lib/data \
#    && chown elasticsearch:elasticsearch /var/lib/data \
#    && chown -R elasticsearch:elasticsearch /elasticsearch-7.11.1/
#RUN mkdir /elasticsearch-7.11.1/snapshots &&\
#    chown elasticsearch:elasticsearch /elasticsearch-7.11.1/snapshots

#USER elasticsearch
#CMD ["/usr/sbin/init"]
#CMD ["/elasticsearch-7.11.1/bin/elasticsearch"]