FROM alpine:3.8

LABEL "maintainer"="daliborgogic <mail@daliborgogic.com>"
LABEL "repository"="https://github.com/daliborgogic/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Sleep"
LABEL "com.github.actions.description"="Stall execution for N seconds"
LABEL "com.github.actions.icon"="moon"
LABEL "com.github.actions.color"="yellow"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]