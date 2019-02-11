FROM alpine:3.8

LABEL "maintainer"="Dalibor Gogic <mail@daliborgogic.com>"
LABEL "repository"="https://github.com/daliborgogic/actions/200"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="200"
LABEL "com.github.actions.description"="Poll a URL until it returns a 200 HTTP status code."
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache curl

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]