
CONTAINER_USER="$(shell id -u):$(shell id -g)"

IMAGE="ghcr.io/getzola/zola:v0.19.1"

CONTAINER_NAME="blog.williamdes.eu"
PROJECT_NAME="blog.williamdes.eu"

version:
	docker run --name ${CONTAINER_NAME} --rm -it ${IMAGE} --version

init:
	docker run --name ${CONTAINER_NAME} --rm -it  -v ${PWD}:/app --workdir /app ${IMAGE} init ${PROJECT_NAME}

build:
	docker run --name ${CONTAINER_NAME} --rm  -v ${PWD}:/app --workdir /app/${PROJECT_NAME} ${IMAGE} build

serve:
	docker run --name ${CONTAINER_NAME} --rm  -v ${PWD}:/app -p 8111:8111 --workdir /app/${PROJECT_NAME} ${IMAGE} serve --interface 0.0.0.0 --port 8111 --base-url localhost

date:
	date +'%Y-%m-%dT%H:%M:%SZ' --utc

cleanup:
	find ./${PROJECT_NAME}/ -name *.jpg -or -name *.jpeg -or -name *.png
	@echo "Cleaning up..."
	find ./${PROJECT_NAME}/ -name *.png -print0 -exec exiftool -overwrite_original "-gps*=" {} \;
	find ./${PROJECT_NAME}/ -name *.jpg -print0 -exec exiftool -overwrite_original "-gps*=" {} \;
	find ./${PROJECT_NAME}/ -name *.jpeg -print0 -exec exiftool -overwrite_original "-gps*=" {} \;
