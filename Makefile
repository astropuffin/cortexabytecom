init:
	mkdir -p functions/bin
	go get ./...

hello: init
	sed "s/STRIPE_API_KEY/$(STRIPE_API_KEY)/g" functions/hello.go
	go build -o functions/bin/hello functions/hello.go

build: init hello
	hugo
