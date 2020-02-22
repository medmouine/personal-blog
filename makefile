HOST = medmouine/
IMAGE = personal-blog:latest

all: build-image push-image

.PHONY: build-image
build-image:
	docker build -t $(HOST)$(IMAGE) .

.PHONY: push-image
push-image:
	docker push $(HOST)$(IMAGE)
