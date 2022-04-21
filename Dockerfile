FROM alpine:3
LABEL maintainer="deeagle <code@deeagle.de>"

WORKDIR /app

RUN apk --no-cache add git npm \
    && npm install @semantic-release/changelog @semantic-release/git @semantic-release/commit-analyzer @semantic-release/exec @saithodev/semantic-release-gitea -D
