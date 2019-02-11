FROM alpine:3.8

LABEL "maintainer"="daliborgogic <mail@daliborgogic.com>"
LABEL "repository"="https://github.com/daliborgogic/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Rsync Deploy"
LABEL "com.github.actions.description"="Deploy to a remote server with rsync via ssh."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache openssh-client rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]