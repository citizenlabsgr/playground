TAG = playground:latest

.PHONY: all
all: build

.PHONY: build
build:
	docker build . --tag=$(TAG)

.PHONY: run
run: build
	@ eval "sleep 2; open http://127.0.0.1:8888" &
	docker run -p 8888:8888 -v $(PWD):/home/jovyan/work $(TAG)
