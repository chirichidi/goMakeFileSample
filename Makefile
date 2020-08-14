RUNTIME_TAG='cpb/go-project-runtime'

build: runtime-build go-build go-vendor-update

runtime-build:
	docker build \
		--tag ${RUNTIME_TAG} \
		./env/dev/docker

go-build:
	docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp ${RUNTIME_TAG} go build -v

go-vendor-update:
	docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp ${RUNTIME_TAG} go mod vendor

update:
	git reset --hard
	git pull

run:
	docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp ${RUNTIME_TAG} go run main.go