FROM fluent/fluentd:edge-debian
USER root
RUN gem install fluent-plugin-s3

COPY fluent.conf /fluentd/etc/

EXPOSE 5140/udp
EXPOSE 5141/udp