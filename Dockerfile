FROM alpine:3.9 AS hugo_base
ARG VERSION=0.70.0
ADD https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz hugo.tar.gz
RUN tar -zxf hugo.tar.gz

FROM scratch
COPY --from=hugo_base ./hugo ./hugo