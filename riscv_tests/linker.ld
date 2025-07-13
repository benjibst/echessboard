ENTRY(_start)

MEMORY
{
  /* Fill in these base addresses and sizes */
  INSTR_MEM (rx)  : ORIGIN = 0x08000000, LENGTH = 4096
  DATA_MEM  (rw)  : ORIGIN = 0x00000000, LENGTH = 16384
}

SECTIONS
{
  /* Code (Instructions) */
  .text : {
    *(.text*)
  } > INSTR_MEM

  /* Read-only data (e.g. const strings) */
  .srodata : {
    *(.srodata*) *(.srodata.*)
  } > DATA_MEM
  .rodata : {
    *(.rodata*) *(.rodata.*)
  } > DATA_MEM
}
