leave_cluster()
{
	rabbitmqctl stop_app
	echo 'Leaving cluster @ ' $CLUSTER_NAME
	rabbitmqctl join_cluster $CLUSTER_NAME
  	exit 1
}


join_cluster()
{
	rabbitmq-server &
	sleep 10s
	echo 'Cluster to join' $CLUSTER_NAME
	echo 'Wait for startup'
	rabbitmqctl await_startup
	echo 'Stopping app'
	rabbitmqctl stop_app
	echo 'Joingning cluster @ ' $CLUSTER_NAME
	rabbitmqctl join_cluster $CLUSTER_NAME
	echo 'Restart app'
	rabbitmqctl start_app
}

join_cluster
echo 'Registering signal'
trap leave_cluster 1 2 3 6
while :
do
	sleep 60s
done 