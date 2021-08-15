BINUTILS_VERSION:= 2.37
GCC_VERSION		:= 11.2.0
CROSS_PREFIX 	:= ~/.local/bin/TinyKernel-Toolchain
TARGET			:= i386-elf-tinykernel

.PHONY: install
install:
	wget https://ftp.gnu.org/gnu/binutils/binutils-$(BINUTILS_VERSION).tar.gz -O $(CROSS_PREFIX)/binutils-$(BINUTILS_VERSION).tar.gz
	wget https://ftp.gnu.org/gnu/gcc/gcc-$(GCC_VERSION)/gcc-$(GCC_VERSION).tar.gz -O $(CROSS_PREFIX)/gcc-$(GCC_VERSION).tar.gz
	tar xvf $(CROSS_PREFIX)/binutils-$(BINUTILS_VERSION).tar.gz
	tar xvf $(CROSS_PREFIX)/gcc-$(GCC_VERSION).tar.gz
	make -f $(CROSS_PREFIX)/build-binutils/make install
	make -f $(CROSS_PREFIX)/build-gcc/make install
