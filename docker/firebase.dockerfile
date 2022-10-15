FROM node:alpine3.13
ARG DATE_MODIFIED="Sat Sep 18 23:17:32 EDT 2021"
ARG VERSION=11.14.3
RUN npm install -g firebase-tools@${VERSION}
CMD ["firebase"]
