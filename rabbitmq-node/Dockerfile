FROM rabbitmq:3-management
COPY join_cluster.sh /join_cluster.sh
COPY leave_cluster.sh /leave_cluster.sh
ENV CLUSTER_NAME=CLUSTER_NAME
CMD [ "/bin/sh", "/join_cluster.sh" ]