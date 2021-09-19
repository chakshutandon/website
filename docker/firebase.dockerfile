FROM node:alpine3.13
ARG DATE_MODIFIED="Sat Sep 18 23:02:42 EDT 2021"
ARG VERSION=9.18.0
RUN npm install -g firebase-tools@${VERSION}
ENTRYPOINT ["firebase"]
