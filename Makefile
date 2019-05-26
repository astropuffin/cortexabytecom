build:
	mkdir -p functions/bin
	go get ./...
	go build -o functions/bin/hello functions/hello.go
	hugo
