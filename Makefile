
CONTAINER_USER="$(shell id -u):$(shell id -g)"

init:
	docker run --name blog.williamdes.eu --rm -it --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app -p 80:80 balthek/zola init blog.williamdes.eu

build:
	docker run --name blog.williamdes.eu --rm --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app/blog.williamdes.eu balthek/zola build

serve:
	docker run --name blog.williamdes.eu --rm --user ${CONTAINER_USER} -v ${PWD}:/app --workdir /app/blog.williamdes.eu -p 8111:8111 balthek/zola serve --interface 0.0.0.0 --port 8111 --base-url localhost
