# https://developer.github.com/actions/creating-github-actions/creating-a-docker-container
FROM alpine:3.8

LABEL "com.github.actions.name"="Example"
LABEL "com.github.actions.description"="Write arguments to the standard output"
# https://feathericons.com/
LABEL "com.github.actions.icon"="bell"
LABEL "com.github.actions.color"="black"

LABEL "repository"="http://github.com/daliborgogic/actions/dlbr"
LABEL "homepage"="http://github.com/daliborgogic/actions"
LABEL "maintainer"="Dalibor Gogic <mail@daliborgogic.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
