include config.mk

PACKAGES = dash linux sbase

.PHONY: all clean

all:
	mkdir -p $(ROOT)

	ARCH=$(ARCH) \
	CC=$(CC) \
	GZ=$(GZ) \
	LEX=$(LEX) \
	MAKE=$(MAKE) \
	YACC=$(YACC) \
	$(PACK) -s . -p $(ROOT) -i $(PACKAGES)

clean:
	rm -rf $(ROOT)/*
