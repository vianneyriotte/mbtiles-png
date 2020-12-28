FROM node:12.18.3-alpine

RUN apk add --no-cache tzdata sqlite

RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python
RUN npm install --quiet node-gyp -g

ENV TZ Europe/Paris
RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN mkdir /maps

WORKDIR /app

COPY ./package.json .

RUN npm install --build-from-source --loglevel verbose

COPY ./ .

# ENTRYPOINT [ "./node_modules/.bin/tl" ]
ENTRYPOINT [ "sh", "create_map.sh" ]
