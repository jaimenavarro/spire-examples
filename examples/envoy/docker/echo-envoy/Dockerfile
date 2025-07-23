FROM envoyproxy/envoy:v1.25.1
RUN apt-get update && \
    apt-get install -y curl iputils-ping telnet netcat dnsutils
COPY conf/envoy.yaml /etc/envoy/envoy.yaml
CMD /usr/local/bin/envoy -l debug -c /etc/envoy/envoy.yaml
