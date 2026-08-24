include config.mk

PACKAGES =

.PHONY: all clean

all:
	$(PACK) -s . -p $(ROOT) -i $(PACKAGES)

clean:
	rm -rf $(ROOT)/*
