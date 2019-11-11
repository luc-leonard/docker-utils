FROM rabbitmq:3-management
COPY join_cluster.sh /join_cluster.sh
ENV CLUSTER_NAME=CLUSTER_NAME
CMD [ "/bin/sh", "/join_cluster.sh" ]