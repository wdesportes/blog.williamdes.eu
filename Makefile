
CONTAINER_USER="$(shell id -u):$(shell id -g)"

IMAGE="balthek/zola:0.13.0"

CONTAINER_NAME="blog.williamdes.eu"
PROJECT_NAME="blog.williamdes.eu"

version:
	docker run --name ${CONTAINER_NAME} --rm -it ${IMAGE} --version

init:
	docker run --name ${CONTAINER_NAME} --rm -it --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app -p 80:80 ${IMAGE} init ${PROJECT_NAME}

build:
	docker run --name ${CONTAINER_NAME} --rm --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app/${PROJECT_NAME} ${IMAGE} build

serve:
	docker run --name ${CONTAINER_NAME} --rm --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app/${PROJECT_NAME} -p 8111:8111 ${IMAGE} serve --interface 0.0.0.0 --port 8111 --base-url localhost
