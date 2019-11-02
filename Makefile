SUPPORTED_COMMANDS := cmd
SUPPORTS_MAKE_ARGS := $(findstring $(firstword $(MAKECMDGOALS)), $(SUPPORTED_COMMANDS))
ifneq "$(SUPPORTS_MAKE_ARGS)" ""
  COMMAND_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(COMMAND_ARGS):;@:)
endif

all:

build:
	docker build -t unturned_server:0.0 .

start:
	docker-compose up -d

stop:
	docker-compose stop 

join:
	docker exec -it server_unturned_unturned_server_1 /bin/bash

#### SERVER CMD ####

cmd: 
	docker exec -it server_unturned_unturned_server_1 ./untserver $(COMMAND_ARGS)