CONTAINER_NAME=thich-hoc.dev
IMAGE_NAME=thich-hoc.dev
PORT=3000
DOCKERFILE=Dockerfile
CURRENT_DIR=$(shell pwd)

up: 
	docker container run -d --name $(CONTAINER_NAME) -p $(PORT):3000 -v $(CURRENT_DIR):/app $(CONTAINER_NAME) 

build:
	docker build -f $(DOCKERFILE) -t $(IMAGE_NAME):latest $(options) .

build-no-cache:
	$(MAKE) build options="--no-cache"

down:
	docker stop $(CONTAINER_NAME) &&
	docker rm $(CONTAINER_NAME)

restart: down up
