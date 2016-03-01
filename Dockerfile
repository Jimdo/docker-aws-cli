FROM alpine:3.1

WORKDIR /root
VOLUME /root/.aws

ENTRYPOINT ["/usr/bin/aws"]
CMD ["help"]

RUN apk add --update less=475-r0 groff=1.22.3-r0 py-pip=1.5.6-r2
RUN pip install awscli==1.10.3
