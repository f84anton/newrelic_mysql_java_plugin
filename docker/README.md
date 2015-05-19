# The New Relic MySQL Plugin

This is the New Relic Plugin for monitoring MySQL databases. It is the same one that can be found in the Plugin Central at https://rpm.newrelic.com/accounts/1/plugins/directory/52

# How to use this image

In order to function, the plugin needs a few environment variables set:

* `NEW_RELIC_LICENSE_KEY`
* `MYSQL_HOST`
* `MYSQL_USER`
* `MYSQL_PASS`

Optionally, you can also set:

* `NEW_RELIC_LOG_LEVEL`
* `MYSQL_CATEGORIES` (see [metric.category.json](https://github.com/newrelic-platform/newrelic_mysql_java_plugin/blob/master/config/metric.category.json) for details)

```shell
$ docker run -d \
  -e NEW_RELIC_LICENSE_KEY=foobarbaz \
  -e MYSQL_HOST=your-db-host \
  -e MYSQL_USER=newrelic \
  -e MYSQL_PASS=SuPeRsEcUrE \
  newrelic/mysql-plugin
```
