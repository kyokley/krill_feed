.PHONY: build publish

build:
	docker build -t kyokley/krill .

publish: build
	docker push kyokley/krill
