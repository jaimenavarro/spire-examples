FROM ghcr.io/spiffe/spire-agent:1.11.2
COPY conf/spire-agent.conf /opt/spire/conf/agent/agent.conf
COPY conf/agent.key.pem /opt/spire/conf/agent/agent.key.pem
COPY conf/agent.crt.pem /opt/spire/conf/agent/agent.crt.pem

WORKDIR /opt/spire
CMD /opt/spire/bin/spire-agent run