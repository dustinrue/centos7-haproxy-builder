all: run

run:
	docker-compose up && docker-compose down

clean:
	docker image rm centos7haproxybuilder_haproxy-builder || exit 0
	rm -rf output
