
CONTAINER_USER="$(shell id -u):$(shell id -g)"

IMAGE="ghcr.io/getzola/zola:v0.15.3"

CONTAINER_NAME="blog.williamdes.eu"
PROJECT_NAME="blog.williamdes.eu"

version:
	docker run --name ${CONTAINER_NAME} --rm -it ${IMAGE} --version

init:
	docker run --name ${CONTAINER_NAME} --rm -it --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app ${IMAGE} init ${PROJECT_NAME}

build:
	docker run --name ${CONTAINER_NAME} --rm --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app/${PROJECT_NAME} ${IMAGE} build

serve:
	docker run --name ${CONTAINER_NAME} --rm --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app/${PROJECT_NAME} -p 8111:8111 ${IMAGE} serve --interface 0.0.0.0 --port 8111 --base-url localhost

date:
	date +'%Y-%m-%dT%H:%M:%SZ' --utc
