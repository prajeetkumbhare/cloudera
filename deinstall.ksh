#!/bin/ksh

$TYPE=$1

if [ $# -ne 1 ]
then 
	echo "Usage: $0 <MASTER/SLAVE>"
  exit
fi

/usr/share/cmf/uninstall-cloudera-manager.sh



if [[ $TYPE == "MASTER" ]]
then

        service cloudera-scm-server-db stop
        service cloudera-scm-server stop

fi

service cloudera-scm-agent stop


rm -rf /var/cache/yum/x86_64/7Server/cloudera-cdh5/*
rm -rf /var/cache/yum/x86_64/7Server/cloudera-manager/*

rm -rf /var/run/cloudera-scm-agent

rm -f /tmp/.scm_prepare_node.lock

rm -rf /opt/cloudera/parcel-cache/*
rm -rf /opt/cloudera/parcels/*
rm -rf /opt/cloudera

rm -rf /opt/SP/amdocs/kafka
rm -rf /opt/SP/amdocs/yarn
rm -rf /opt/SP/amdocs/impala
rm -rf /opt/SP/amdocs/dfs

rm -fr /opt/SP/amdocs/dfa/nn
rm -fr /opt/SP/amdocs/dfa/dn
rm -fr /opt/SP/amdocs/dfa/nm
rm -fr /opt/SP/amdocs/dfa/snn
rm -fr /var/lib/zookeeper/*
rm -fr /opt/SP/amdocs/kafka/data

rm -Rf /usr/share/cmf /var/lib/cloudera* /var/cache/yum/cloudera* /var/log/cloudera* /var/run/cloudera*
rm -Rf /var/lib/flume-ng /var/lib/hadoop* /var/lib/hue /var/lib/navigator /var/lib/oozie /var/lib/solr /var/lib/sqoop* /var/lib/zookeeper
rm -f /etc/cloudera-scm-server/*

rm -rf /etc/cloudera-scm-server/

rm -rf /var/run/hdfs-sockets

rm -rf /var/log/hadoop-yarn
rm -rf /var/log/hadoop-mapreduce
rm -rf /var/log/hadoop-httpfs
rm -rf /var/log/impala*
rm -rf /var/log/llama
rm -rf /var/log/solr
rm -rf /var/log/hive-hcatalog
rm -rf /var/log/hive
rm -rf /var/log/hbase-solr
rm -rf /var/log/oozie
rm -rf /var/log/cloudera-scm-server
rm -rf /var/log/hue
rm -rf /var/log/flume-ng
rm -rf /var/log/sqoop2
rm -rf /var/log/zookeeper
rm -rf /var/log/hadoop-hdfs
rm -rf /var/log/hbase
rm -rf /var/log/spark
rm -rf /var/log/catalogd
rm -rf /var/log/statestore
rm -rf /var/lib/hadoop*
rm -rf /var/lib/impala
rm -rf /var/lib/llama
rm -rf /var/lib/solr
rm -rf /var/lib/hive*
rm -rf /var/lib/hbase*
rm -rf /var/lib/cloudera*
rm -rf /var/lib/hue
rm -rf /var/lib/sqoop*
rm -rf /var/lib/zookeeper
rm -rf /var/lib/flume-ng
rm -rf /var/lib/sentry
rm -rf /var/lib/spark
rm -rf /usr/lib/impala
rm -rf /usr/lib/llama
rm -rf /usr/lib/solr
rm -rf /usr/lib/hive*
rm -rf /usr/lib/hbase*
rm -rf /usr/lib/cloudera*
rm -rf /usr/lib/hue
rm -rf /usr/lib/sqoop*
rm -rf /usr/lib/zookeeper
rm -rf /usr/lib/flume-ng
rm -rf /usr/lib/spark
rm -rf /usr/lib/oozie
rm -rf /etc/hcatalog
rm -rf /etc/zookeeper
rm -rf /etc/hadoop-httpfs
rm -rf /etc/oozie
rm -rf /etc/pig
rm -rf /etc/hue
rm -rf /etc/sqoop
rm -rf /etc/flume-ng
rm -rf /etc/impala
rm -rf /etc/llama
rm -rf /etc/hbase-solr
rm -rf /etc/sqoop2
rm -rf /etc/hive-hcatalog
rm -rf /etc/hive-webhcat
rm -rf /etc/hive-webhcat
rm -rf /etc/cloudera-scm-agent
rm -rf /etc/solr
rm -rf /etc/spark
rm -rf /etc/hbase
rm -rf /etc/hadoop
rm -rf /etc/hive
rm -rf /etc/hadoop-kms
rm -rf /etc/mahout
rm -rf /etc/sentry
rm -rf /etc/cloudera-scm-server
rm -f /etc/alternatives/flume*
rm -f /etc/alternatives/hadoop*
rm -f /etc/alternatives/hbase*
rm -f /etc/alternatives/hive*
rm -f /etc/alternatives/hue*
rm -f /etc/alternatives/impala*
rm -f /etc/alternatives/solr*
rm -f /etc/alternatives/spark*
rm -f /etc/alternatives/sqoop*
rm -f /etc/alternatives/zookeeper*
rm -f /etc/alternatives/oozie*
rm -f /etc/alternatives/pig*
rm -f /etc/alternatives/avro-tools
rm -f /etc/alternatives/beeline
rm -f /etc/alternatives/llama*
rm -f /etc/alternatives/mapred*
rm -f /etc/alternatives/sentry*
rm -f /etc/alternatives/yarn*
rm -f /var/lib/alternatives/sqoop-import
rm -f /var/lib/alternatives/solr-conf
rm -f /var/lib/alternatives/hive-hcatalog-conf
rm -f /var/lib/alternatives/llama-conf
rm -f /var/lib/alternatives/sqoop-codegen
rm -f /var/lib/alternatives/sqoop-import-all-tables
rm -f /var/lib/alternatives/sqoop
rm -f /var/lib/alternatives/cli_mt
rm -f /var/lib/alternatives/impalad
rm -f /var/lib/alternatives/mahout-conf
rm -f /var/lib/alternatives/parquet-tools
rm -f /var/lib/alternatives/hiveserver2
rm -f /var/lib/alternatives/spark-submit
rm -f /var/lib/alternatives/llamaadmin
rm -f /var/lib/alternatives/hbase-solr-conf
rm -f /var/lib/alternatives/hive
rm -f /var/lib/alternatives/hadoop-0.20
rm -f /var/lib/alternatives/hbase
rm -f /var/lib/alternatives/sqoop-metastore
rm -f /var/lib/alternatives/hadoop-fuse-dfs
rm -f /var/lib/alternatives/hdfs
rm -f /var/lib/alternatives/zookeeper-server
rm -f /var/lib/alternatives/hue-conf
rm -f /var/lib/alternatives/zookeeper-client
rm -f /var/lib/alternatives/sqoop-list-tables
rm -f /var/lib/alternatives/hive-webhcat-conf
rm -f /var/lib/alternatives/hadoop
rm -f /var/lib/alternatives/flume-ng-conf
rm -f /var/lib/alternatives/avro-tools
rm -f /var/lib/alternatives/sqoop2
rm -f /var/lib/alternatives/zookeeper-server-initialize
rm -f /var/lib/alternatives/zookeeper-conf
rm -f /var/lib/alternatives/solrctl
rm -f /var/lib/alternatives/impala-conf
rm -f /var/lib/alternatives/pig-conf
rm -f /var/lib/alternatives/sqoop-list-databases
rm -f /var/lib/alternatives/whirr
rm -f /var/lib/alternatives/sqoop2-conf
rm -f /var/lib/alternatives/bigtop-detect-javahome
rm -f /var/lib/alternatives/kite-dataset
rm -f /var/lib/alternatives/pig
rm -f /var/lib/alternatives/pyspark
rm -f /var/lib/alternatives/hbase-conf
rm -f /var/lib/alternatives/mapred
rm -f /var/lib/alternatives/mahout
rm -f /var/lib/alternatives/sqoop-conf
rm -f /var/lib/alternatives/zookeeper-server-cleanup
rm -f /var/lib/alternatives/catalogd
rm -f /var/lib/alternatives/llama
rm -f /var/lib/alternatives/oozie
rm -f /var/lib/alternatives/load_gen
rm -f /var/lib/alternatives/yarn
rm -f /var/lib/alternatives/sqoop-job
rm -f /var/lib/alternatives/statestored
rm -f /var/lib/alternatives/sqoop-eval
rm -f /var/lib/alternatives/hcat
rm -f /var/lib/alternatives/spark-executor
rm -f /var/lib/alternatives/hadoop-kms-conf
rm -f /var/lib/alternatives/sqoop-merge
rm -f /var/lib/alternatives/sqoop-create-hive-table
rm -f /var/lib/alternatives/sentry
rm -f /var/lib/alternatives/cli_st
rm -f /var/lib/alternatives/sqoop-export
rm -f /var/lib/alternatives/sqoop-version
rm -f /var/lib/alternatives/spark-conf
rm -f /var/lib/alternatives/hbase-indexer
rm -f /var/lib/alternatives/beeline
rm -f /var/lib/alternatives/flume-ng
rm -f /var/lib/alternatives/sqoop-help
rm -f /var/lib/alternatives/impala-shell
rm -f /var/lib/alternatives/spark-shell
rm -f /var/lib/alternatives/hadoop-httpfs-conf
rm -f /var/lib/alternatives/sentry-conf
rm -f /var/lib/alternatives/hive-conf
rm -f /var/lib/alternatives/hadoop-conf
rm -f /etc/alternatives/cli_mt
rm -f /etc/alternatives/mahout-conf
rm -f /etc/alternatives/parquet-tools
rm -f /etc/alternatives/hdfs
rm -f /etc/alternatives/whirr
rm -f /etc/alternatives/bigtop-detect-javahome
rm -f /etc/alternatives/kite-dataset
rm -f /etc/alternatives/pyspark
rm -f /etc/alternatives/mahout
rm -f /etc/alternatives/catalogd
rm -f /etc/alternatives/load_gen
rm -f /etc/alternatives/statestored
rm -f /etc/alternatives/hcat
rm -f /etc/alternatives/cli_st
rm -rf /run/cloudera-scm-server
rm -rf /run/cloudera-scm-agent
rm -f /run/cloudera-scm-server.pid

SUPERVISOR=`ps -ef | grep supervisor | grep -v grep | awk -F" " '{print $2}'`

kill -9 $SUPERVISOR

RPMS=`yum list installed | grep cdh | awk '{print $1}' | grep -v cloudera `

for entity in $RPMS
do
        printf "yum -y remove $entity\n"
        yum -y remove $entity
done


MANAGER_RPMS=`yum list installed | grep cloudera-manager | awk '{print $1}'`

entity=""

for entity in $MANAGER_RPMS
do
        printf "yum -y remove $entity\n"
        yum -y remove $entity
done

#done
#yum clean all
exit 0
