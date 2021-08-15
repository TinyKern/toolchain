GCC_VERSION		:= 11.2.0
CROSS_PREFIX 	:= ~/.local/bin/TinyKernel-Toolchain
TARGET			:= i386-elf-tinykernel

install:
	@echo "Installing gcc"
	../$(GCC_VERSION)/configure --prefix="$(CROSS_PREFIX)" --target=$(TARGET) --disable-nls --enable-languages=c,c++ --without-headers;
	make -j$(CORES) all-gcc;
	make -j$(CORES) all-target-libgcc;
	make install-gcc
	make install-target-libgcc