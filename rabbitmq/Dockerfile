FROM rabbitmq:3.7.8-management
COPY rabbitmq.conf /etc/rabbitmq
RUN rabbitmq-plugins enable --offline rabbitmq_peer_discovery_consul