PHONY: build dbuild drun

CONTAINER_NAME=docdee/semantic-release-gitea

build: dbuild

dbuild:
	docker buildx build -t "${CONTAINER_NAME}:local" --load .

drun:
	docker run --rm "${CONTAINER_NAME}:local"
