FROM alpine:3.13.6 AS base
ARG VERSION=0.88.1
RUN apk update && apk add curl
RUN curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz \
  && tar -xvf /tmp/hugo.tar.gz \
  && chmod +x hugo

FROM scratch
COPY --from=base hugo /usr/local/bin/hugo
ENTRYPOINT ["/usr/local/bin/hugo"]
