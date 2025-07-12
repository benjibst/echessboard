rm hex*
riscv64-linux-gnu-gcc  -T linker.ld  -Wall -Wextra -Wpedantic -O0 -mabi=ilp32 -march=rv32i -o hex.elf $1 -nostdlib -fomit-frame-pointer -nostartfiles -fno-pic -fno-pie -no-pie -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -static

riscv64-linux-gnu-objcopy -O binary --only-section .text hex.elf hex --set-start 0
od -v -An -tx4 hex > instr_dump
cat instr_dump

riscv64-linux-gnu-objcopy -O binary --only-section .rodata hex.elf hex --set-start 0
od -v -An -tx4 hex > data_dump
cat data_dump

riscv64-linux-gnu-objdump -d hex.elf -M no-aliases 
