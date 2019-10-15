rabbitmqctl stop_app
echo 'Leaving cluster @ ' $CLUSTER_NAME
rabbitmqctl join_cluster $CLUSTER_NAME