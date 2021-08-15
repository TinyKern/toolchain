BINUTILS_VERSION:= 2.37
GCC_VERSION		:= 11.2.0
CROSS_PREFIX 	:= ~/.local/bin/TinyKernel-Toolchain
TARGET			:= i386-elf-tinykernel

.PHONY: install
install:
	tar xvf $(CROSS_PREFIX)/binutils-$(BINUTILS_VERSION).tar.gz
	tar xvf $(CROSS_PREFIX)/gcc-$(GCC_VERSION).tar.gz
	make -C build-binutils install
	make -C build-gcc install