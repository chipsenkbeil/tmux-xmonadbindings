
CC=gcc
CCFLAGS=
FILES=modifier.c
BUILD_DIR=build/
PROG=modifier

all:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CCFLAGS) $(FILES) -o $(PROG)
	@mv $(PROG) $(BUILD_DIR)

clean:
	@rm -f *.o
	@rm -rf $(BUILD_DIR)

