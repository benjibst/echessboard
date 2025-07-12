ENTRY(_start)

MEMORY
{
  /* Fill in these base addresses and sizes */
  INSTR_MEM (rx)  : ORIGIN = 0x08000000, LENGTH = 4096
  DATA_MEM  (rw)  : ORIGIN = 0x00000000, LENGTH = 17408
}

SECTIONS
{
  /* Code (Instructions) */
  .text : {
    *(.text*)
  } > INSTR_MEM

  /* Read-only data (e.g. const strings) */
  .rodata : {
    *(.rodata*) *(.rodata.*)
  } > DATA_MEM
}
