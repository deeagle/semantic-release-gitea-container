FROM alpine:3.24@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

ARG BUILD_DATE="unknown"
ARG GIT_COMMIT="unknown"
ARG BUILD_ENVIRONMENT="unknown"

LABEL org.opencontainers.image.authors="Martin Kock-Faltin <code@deeagle.de>" \
      org.opencontainers.image.url="https://github.com/deeagle/semantic-release-gitea-container" \
      org.opencontainers.image.title="Semantic-Release 4 Gitea/Drone-CI." \
      org.opencontainers.image.description="The tool semantic-release within a container for Gitea/Drone-CI setups." \
      org.opencontainers.image.vendor="deeagle.de" \
      org.opencontainers.image.created="${BUILD_DATE}" \
      org.opencontainers.image.revision="${GIT_COMMIT}" \
      org.opencontainers.image.build_environment="${BUILD_ENVIRONMENT}"

WORKDIR /app

RUN apk --no-cache add git npm \
    && npm install -g @semantic-release/changelog @semantic-release/git @semantic-release/commit-analyzer @semantic-release/exec @saithodev/semantic-release-gitea semantic-release

CMD ["npx", "semantic-release"]
