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
echo 'Registering signal'
trap '/bin/sh /leave_cluster.sh' TERM STOP
while :
do
	sleep 60s
done 