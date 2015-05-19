FROM java:8-jre
MAINTAINER New Relic <support@newrelic.com>

ENV PLUGIN_VERSION=newrelic_mysql_plugin-2.0.0

ADD https://github.com/newrelic-platform/newrelic_mysql_java_plugin/raw/master/dist/${PLUGIN_VERSION}.tar.gz /tmp/
RUN mkdir -p /data/app && tar -C /data/app/ -xzf /tmp/${PLUGIN_VERSION}.tar.gz

ADD write-configs /data/app/${PLUGIN_VERSION}/
WORKDIR /data/app/${PLUGIN_VERSION}

ENV NEW_RELIC_LICENSE_KEY="" NEW_RELIC_LOG_LEVEL="info"
ENV MYSQL_CATEGORIES="status,newrelic" MYSQL_USER="" MYSQL_PASS="" MYSQL_HOST=""

CMD ./write-configs && java -Xmx128m -jar plugin.jar
