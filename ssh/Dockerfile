FROM alpine:3.4

LABEL "maintainer"="daliborgogic <mail@daliborgogic.com>"
LABEL "repository"="https://github.com/daliborgogic/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="SSH"
LABEL "com.github.actions.description"="Run command via SSH"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache openssh-client

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]