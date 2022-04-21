FROM alpine:3
LABEL maintainer="deeagle <code@deeagle.de>"

WORKDIR /app

RUN apk --no-cache add git npm \
    && npm install -g @semantic-release/changelog @semantic-release/git @semantic-release/commit-analyzer @semantic-release/exec @saithodev/semantic-release-gitea semantic-release

CMD ["npx", "semantic-release"]
