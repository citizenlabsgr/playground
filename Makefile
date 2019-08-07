TAG = playground:latest

.PHONY: all
all: build

.PHONY: build
build:
	docker build . --file=Dockerfile.dev --tag=$(TAG)

.PHONY: run
run: build
	@ eval "sleep 2; open http://127.0.0.1:8888/tree/work/notebooks" &
	docker run -p 8888:8888 -v $(PWD):/home/jovyan/work $(TAG)
