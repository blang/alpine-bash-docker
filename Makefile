NS = blang
REPO = alpine-bash
NAME = alpine-bash

.PHONY: build shell

build:
	docker build $(OPTS) -t $(NS)/$(REPO) .

shell:
	docker run $(OPTS) --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO) /bin/bash

rm:
	docker rm $(OPTS) $(NAME)

default: build
