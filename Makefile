SHELL = /bin/bash

build:
	docker build -t env .

bash:
	docker run -it -v $(shell pwd):/env env /bin/bash

notebook:
	docker run -it -p 7828:7828 -v $(shell pwd):/env env sh /env/start_notebook.sh