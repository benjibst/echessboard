riscv64-linux-gnu-gcc -Wall -Wextra -Wpedantic -O0 -mabi=ilp32 -march=rv32i -o hex $1 -nostdlib
riscv64-linux-gnu-objcopy -O binary -j .text hex hex.bin
od -An -tx4 hex.bin > hexdump