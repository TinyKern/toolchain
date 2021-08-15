BINUTILS_VERSION:= 2.37
CROSS_PREFIX 	:= ~/.local/bin/TinyKernel-Toolchain
TARGET			:= i386-elf-tinykernel

install:
	@echo "Installing binutils"
	@mkdir -p $(CROSS_PREFIX)/build-binutils
	../$(BINUTILS_VERSION)/configure --prefix="$(CROSS_PREFIX)" --target=$(TARGET) --with-sysroot --disable-werror --disable-nls;
	make -j$(CORES);
	make install