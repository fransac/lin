include config.mk

PACKAGES =

.PHONY: all clean

all:
	mkdir -p $(ROOT)

	ARCH=$(ARCH) \
	GZ=$(GZ) \
	MAKE=$(MAKE) \
	$(PACK) -s . -p $(ROOT) -i $(PACKAGES)

clean:
	rm -rf $(ROOT)/*
