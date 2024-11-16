.PHONY: build publish run

NO_CACHE ?= 0

build:
ifeq ($(NO_CACHE), 1)
	docker build --no-cache -t kyokley/krill .
else
	docker build -t kyokley/krill .
endif

publish: build
	docker push kyokley/krill

run: build
	docker run --rm -t kyokley/krill
