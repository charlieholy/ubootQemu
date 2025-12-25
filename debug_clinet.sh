gdb-multiarch u-boot \
  -ex "target remote :1234" \          # 自动连接 QEMU
  -ex "b relocate_code" \              # 自动打 relocate_code 断点
  -ex "c" \                            # 自动执行到 relocate_code
  -ex "add-symbol-file u-boot 0x80000000" \  # 自动更新 DRAM 符号表
  -ex "b smc911x_start" \              # 自动打目标函数断点
  -ex "c"                              # 自动执行，触发断点
