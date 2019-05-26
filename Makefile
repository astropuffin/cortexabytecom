init:
	mkdir -p functions/bin
	go get ./...

hello: init
	sed -i "s/STRIPE_PUBLIC_API_KEY/$(STRIPE_PUBLIC_API_KEY)/g" functions/hello/hello.go
	go build -o functions/bin/hello functions/hello/hello.go

mm:
	sed -i "s/STRIPE_PUBLIC_API_KEY/$(STRIPE_PUBLIC_API_KEY)/g" content/moriartys-machinations.html
	sed -i "s/MM_SKU/$(MM_SKU)/g" content/moriartys-machinations.html

build: init hello mm
	hugo
