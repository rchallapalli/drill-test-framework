user=`ps -ef | grep Drillbit | grep -v grep | awk '{print $1}'`
hadoop fs -chown -R `echo $user`: /drill/testdata/metadata_caching

