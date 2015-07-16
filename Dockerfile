FROM java:latest

MAINTAINER Eric Lubow <eric@lubow.org>

WORKDIR /opt/titan-0.9.0-M2-hadoop1

RUN curl -o /opt/titan.zip http://s3.thinkaurelius.com/downloads/titan/titan-0.9.0-M2-hadoop1.zip

RUN unzip /opt/titan.zip -d /opt/ && \
    rm /opt/titan.zip

ADD run.sh /opt/titan-0.9.0-M2-hadoop1/

EXPOSE 8182
EXPOSE 8184

CMD ["/bin/sh", "-e", "/opt/titan-0.9.0-M2-hadoop1/run.sh"]
