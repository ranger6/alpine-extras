DOCKER_BASE_NAME := ranger6/alpine-extra
DOCKER_IMAGE_NAME := $(DOCKER_BASE_NAME):3.13

build: Dockerfile
	docker build --file Dockerfile --tag $(DOCKER_IMAGE_NAME) .

clean_build: Dockerfile
	docker build --no-cache --pull --file Dockerfile --tag $(DOCKER_IMAGE_NAME) .

push: build
	docker push $(DOCKER_IMAGE_NAME)
	
latest: build
	docker tag $(DOCKER_IMAGE_NAME) $(DOCKER_BASE_NAME):latest
