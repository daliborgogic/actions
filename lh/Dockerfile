FROM mhart/alpine-node:11.6
#node:11-alpine

ENV CHROME_BIN="/usr/bin/chromium-browser" \
    NODE_ENV="production"
RUN set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    dumb-init \
    udev \
    ttf-freefont \
    chromium \
    && npm install puppeteer-core@1.10.0 --silent \
      \
    # Cleanup
    && apk del --no-cache make gcc g++ python binutils-gold gnupg libstdc++ \
    && rm -rf /usr/include \
    && rm -rf /var/cache/apk/* /root/.node-gyp /usr/share/man /tmp/* \
    && echo
WORKDIR /app
COPY . .
RUN npm ci --production
ENTRYPOINT ["sh", "/entrypoint.sh"]