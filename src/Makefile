.PHONY: clean linux mac all arch

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    MAKE_DIR += linux/
endif
ifeq ($(UNAME_S),FreeBSD)
    MAKE_DIR += bsd/
endif
ifeq ($(UNAME_S),NetBSD)
    MAKE_DIR += bsd/
endif
ifeq ($(UNAME_S),OpenBSD)
    MAKE_DIR += bsd/
endif
ifeq ($(UNAME_S),Darwin)
    MAKE_DIR += mac/
endif

arch:
	@$(MAKE) -C ${MAKE_DIR}

all: mac linux bsd

mac:
	@$(MAKE) -C mac/

linux:
	@$(MAKE) -C linux/

bsd:
	@$(MAKE) -C bsd/

clean:
	@rm -f *.o
	@$(MAKE) -C mac/ clean
	@$(MAKE) -C linux/ clean

