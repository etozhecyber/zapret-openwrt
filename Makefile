ARCH ?= mipsel_24kc

#Run OpenWrt SDK in it update packages and compile zapret
compile:
	docker run --rm \
	-v $(shell pwd)/bin/:/home/build/openwrt/bin \
	-v $(shell pwd)/packages/:/home/build/openwrt/package/zapret \
	openwrtorg/sdk:$(ARCH) bash -c "\
	./scripts/feeds update base packages && \
	./scripts/feeds install -a && \
	make defconfig && \
	make package/{tpws,nfqws,ip2net,mdig}/compile \
	"

sdk:
	docker run -it --rm \
	-v $(shell pwd)/bin/:/home/build/openwrt/bin \
	-v $(shell pwd)/packages/:/home/build/openwrt/package/zapret \
	openwrtorg/sdk:$(ARCH)
