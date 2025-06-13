rm hex*
riscv64-linux-gnu-gcc -c -Wall -Wextra -Wpedantic -O0 -mabi=ilp32 -march=rv32i -o hex.o $1 -nostdlib -fomit-frame-pointer
riscv64-linux-gnu-objcopy -O binary -j .text hex.o hex.bin --set-start 0
od -v -An -tx4 hex.bin > hexdump
riscv64-linux-gnu-objdump -dr hex.o -M no-aliases
