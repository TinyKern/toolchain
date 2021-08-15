BINUTILS_VERSION:= 2.37
GCC_VERSION		:= 11.2.0
CROSS_PREFIX 	:= ~/.local/bin/TinyKernel-Toolchain
TARGET			:= i386-elf-tinykernel

.PHONY: install
install:
	tar xvf $(CROSS_PREFIX)/binutils-$(BINUTILS_VERSION).tar.gz
	tar xvf $(CROSS_PREFIX)/gcc-$(GCC_VERSION).tar.gz
	@echo "Installing binutils"
	@mkdir -p $(CROSS_PREFIX)/build-binutils
	$(CROSS_PREFIX)/$(BINUTILS_VERSION)/configure --prefix="$(CROSS_PREFIX)" --target=$(TARGET) --with-sysroot --disable-werror --disable-nls;
	make -j$(CORES);
	make install
	@echo "Installing gcc"
	@mkdir -p $(CROSS_PREFIX)/build-gcc
	@cd $(CROSS_PREFIX)/build-gcc;
	$(CROSS_PREFIX)/$(GCC_VERSION)/configure --prefix="$(CROSS_PREFIX)" --target=$(TARGET) --disable-nls --enable-languages=c,c++ --without-headers;
	make -j$(CORES) all-gcc;
	make -j$(CORES) all-target-libgcc;
	make install-gcc
	make install-target-libgcc