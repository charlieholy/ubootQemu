# ubootQemu
uboot_debug


//////  成功案例
ubuntu 22.02
apt install bison flex libssl-dev libgnutls28-dev
apt install -y libncurses5-dev  // used to make menuconfig

git clone https://source.denx.de/u-boot/u-boot.git // download u-boot source code

make ARCH=arm vexpress_ca9x4_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j$(nproc)

QEMU_AUDIO_DRV=none qemu-system-arm -M vexpress-a9 -m 1024 -kernel ./u-boot -nographic

gdb-multiarch u-boot
target remote:1234  // auto break at _start  , u can stepi or next to continue.

b puts
