.EXPORT_ALL_VARIABLES:

GIT_TAG = 0.1.0

all: lint

lint:
	yamllint -s .

tag:
	@echo $(GIT_TAG)
