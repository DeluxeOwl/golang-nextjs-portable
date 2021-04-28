.PHONY: build-nextjs
build-nextjs:
	cd nextjs; \
	yarn install; \
	NEXT_TELEMETRY_DISABLED=1 yarn run export

.PHONY: build
build: build-nextjs
	rm golang-nextjs-portable; \
	go build . ; \
	./golang-nextjs-portable