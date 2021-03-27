FROM       golang:1.10.0-alpine3.7

RUN        apk add --no-cache git sysstat

RUN        mkdir /data && \
           mkdir /go/conf

RUN        go get github.com/belsander/plugctl

COPY       plugctl.conf.sample /go/conf/plugctl.conf

COPY       entrypoint.sh /entrypoint.sh

RUN        chmod +x /entrypoint.sh

EXPOSE     8080

VOLUME     /data

ENTRYPOINT ["/entrypoint.sh"]
