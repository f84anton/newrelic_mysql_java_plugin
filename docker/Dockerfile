FROM openjdk:8-jre-alpine

ARG PLUGIN_VERSION=newrelic_mysql_plugin-2.0.0

RUN apk --no-cache add bash

ADD dist/${PLUGIN_VERSION}.tar.gz /opt/
ADD docker/write-configs docker/required-variables.txt /opt/${PLUGIN_VERSION}/
WORKDIR /opt/${PLUGIN_VERSION}

ENV NEW_RELIC_LICENSE_KEY="" \
    NEW_RELIC_LOG_LEVEL="info" \
    PLUGIN_NAME="" \
    PLUGIN_HOST="" \
    PLUGIN_METRICS="status,newrelic" \
    PLUGIN_USER="" \
    PLUGIN_PASSWD=""

CMD ./write-configs && java -Xmx128m -jar plugin.jar
