NAME = mohamed-elsayed

.PHONY: build run clean
	
build:
	cd ./project/containerdb && docker build -t ${NAME}/mysql .
	
	cd ./project/containerwp && docker build -t ${NAME}/phpfpm .
	
	cd ./project/downloader  && docker build -t ${NAME}/downloader .

	cd ./project/containerngin && docker build -t ${NAME}/nginx .

run:
	docker run -d  --name mysql ${NAME}/mysql

	docker run -i -t --name downloader ${NAME}/downloader
	
	docker run -d --name app --volumes-from downloader --link mysql:db ${NAME}/phpfpm
	
	docker run -d -p 80:80 --name nginx --volumes-from downloader --link app:app ${NAME}/nginx

clean:
	sudo docker rm -f `sudo docker ps -a -q`
