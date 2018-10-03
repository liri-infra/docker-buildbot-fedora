CONTAINER=liridev/buildbot-fedora

build:
	@sudo docker build -t $(CONTAINER) .

nocache:
	@sudo docker build -t $(CONTAINER) --build-arg CACHEBUST=$(date +%s) .

push:
	@sudo docker push $(CONTAINER)

all: build

.PHONY: build
