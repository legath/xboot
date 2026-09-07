# Allwinner T113-S3

## Compile source code and generate the target files at the output directory
```shell
make clean
make CROSS_COMPILE=/path/to/arm-none-linux-gnueabihf- PLATFORM=arm32-t113s3
```

The external bootloader must initialize DDR, load `xboot.bin` to `0x40000000`,
and jump to that address. The maximum image size is 8 MiB.

## Download xfel tool's source code
```shell
git clone https://github.com/xboot/xfel.git
```

## Make and install xfel tool
```shell
make
sudo make install
```

