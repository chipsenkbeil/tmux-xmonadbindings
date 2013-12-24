.PHONY: clean linux mac all arch

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    MAKE_DIR += linux/
endif
ifeq ($(UNAME_S),Darwin)
    MAKE_DIR += mac/
endif

arch:
	@$(MAKE) -C ${MAKE_DIR}

all: mac linux

mac:
	@$(MAKE) -C mac/

linux:
	@$(MAKE) -C linux/

clean:
	@rm -f *.o
	@$(MAKE) -C mac/ clean
	@$(MAKE) -C linux/ clean

