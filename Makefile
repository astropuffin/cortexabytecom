build:
	cd functions && \
	go get ./... && \
	go build
	hugo
