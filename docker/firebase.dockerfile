FROM node:alpine3.13
RUN npm install -g firebase-tools@9.18.0
ENTRYPOINT ["firebase"]
