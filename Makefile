.EXPORT_ALL_VARIABLES:

GIT_TAG = 0.1.0

all: lint

changelog:
	docker run --quiet --rm --volume "${PWD}:/mnt/source" --workdir /mnt/source ghcr.io/cbdq-io/gitchangelog > CHANGELOG.md

lint:
	yamllint -s .

tag:
	@echo $(GIT_TAG)
