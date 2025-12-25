EMU_AUDIO_DRV=none qemu-system-arm \
  -machine vexpress-a9 \
  -kernel u-boot \
  -nographic \
  -monitor none \
  -serial mon:stdio \
  -no-reboot \
  -m 512M -S -s
