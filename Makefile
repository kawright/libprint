# ----- PROJECT INFO -----

PROJ_NAME := libprint
VER := 1.0

# ----- COMPILER CONFIGURATION -----

CC := gcc
CC_OPTS := \
	-Wall \
	-Werror \
	-fpic \
	-g

# ----- REAL TARGETS -----

build/lib/libprint.so: build/obj/print.o
	@mkdir -p build/lib
	@${CC} -shared -o $@ $<
	@echo "Built target $@"

build/obj/print.o: print.c print.h Makefile
	@mkdir -p build/obj
	@${CC} ${CC_OPTS} -c -o $@ $<
	@echo "Built target $@"

# ----- PHONY TARGETS -----

.PHONY: \
	all \
	clean \
	install \
	uninstall

all: build/lib/libprint.so
	@echo "Built ${PROJ_NAME} version ${VER}"

clean:
	@rm -rf build
	@echo "All build artifacts removed"

install: build/lib/libprint.so
	@cp print.h /usr/local/include/print.h
	@echo "Copied print.h"
	@cp build/lib/libprint.so /usr/local/lib/libprint.so
	@echo "Copied libprint.so"
	@echo "${PROJ_NAME} version ${VER} successfully installed"

uninstall:
	@rm /usr/local/include/print.h
	@echo "Deleted print.h"
	@rm /usr/local/lib/libprint.so
	@echo "Deleted libprint.so"
	@echo "${PROJ_NAME} successfully uninstalled"

