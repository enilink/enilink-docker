FROM anapsix/alpine-java:jre8

# Download and unarchive enilink platform
RUN mkdir -p /opt/enilink-platform && \
    curl -jksSL https://github.com/enilink/enilink/releases/download/v1.1.1/enilink-platform-1.1.1-linux.gtk.x86_64.tar.gz \
    | tar -xzf - -C /opt/enilink-platform

# Fix DNS resolution issues when nss is not installed
# see https://github.com/dockmob/docker-java/blob/master/Dockerfile
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

# Run the enilink platform server
ENTRYPOINT ["/opt/enilink-platform/enilink-platform"]
