.PHONY: build publish run

build:
	docker build -t kyokley/krill .

publish: build
	docker push kyokley/krill

run: build
	docker run --rm -it kyokley/krill
