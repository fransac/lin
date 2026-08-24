include config.mk

PACKAGES =

.PHONY: all clean

all:
	mkdir -p $(ROOT)

	ARCH=$(ARCH) \
	MAKE=$(MAKE) \
	$(PACK) -s . -p $(ROOT) -i $(PACKAGES)

clean:
	rm -rf $(ROOT)/*
