FROM java:8-jre
MAINTAINER New Relic <support@newrelic.com>


ADD dist/newrelic_mysql_plugin-2.0.0.tar.gz /data/app/
ADD scripts/write-configs /data/app/newrelic_mysql_plugin-2.0.0/scripts/
WORKDIR /data/app/newrelic_mysql_plugin-2.0.0

ENV NEW_RELIC_LICENSE_KEY="" NEW_RELIC_LOG_LEVEL="info"
ENV MYSQL_CATEGORIES="status,newrelic" MYSQL_USER="" MYSQL_PASS="" MYSQL_HOST="" MYSQL_PORT=""

CMD scripts/write-configs && java -Xmx128m -jar plugin.jar
