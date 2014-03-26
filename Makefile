IMG=ngty/archlinux-rubinius
TAG=latest

build:
	docker build -t $(IMG):$(TAG) .

push:
	docker push $(IMG)

