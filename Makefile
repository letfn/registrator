SHELL := /bin/bash

menu:
	@perl -ne 'printf("%10s: %s\n","$$1","$$2") if m{^([\w+-]+):[^#]+#\s(.+)$$}' Makefile

build: bash # Build defn/registrator
	docker build -t defn/registrator -f Dockerfile .

bash:
	curl -sSL -o bash.1 https://github.com/robxu9/bash-static/releases/download/5.1.004-1.2.2/bash-linux-x86_64
	chmod 755 bash.1
	mv bash.1 bash

push: # Push defn/registrator
	docker push defn/registrator

pull : # Pull defn/registrator
	docker pull defn/registrator
