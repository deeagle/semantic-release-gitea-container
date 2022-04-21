FROM alpine:3
LABEL maintainer="deeagle <code@deeagle.de>"

RUN apk --no-cache add git npm
RUN npm install @semantic-release/changelog @semantic-release/git @semantic-release/commit-analyzer @semantic-release/exec @saithodev/semantic-release-gitea -D
