FROM alpine:3.8

LABEL "maintainer"="daliborgogic <mail@daliborgogic.com>"
LABEL "repository"="https://github.com/daliborgogic/actions/rsync"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Rsync"
LABEL "com.github.actions.description"="Rsync via SSH."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache openssh-client rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]