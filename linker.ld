/* bootloader will start here*/
ENTRY(_start)

SECTIONS {
 . = 2M;
 .text BLOCK(4K) : ALIGN(4K) {
     *(.multiboot)
     *(.text)
 }
 /*read only data*/
 .rodata BLOCK(4K) : ALIGN(4K) {
     *(.rodata)
 }
 /*read write data*/
 .data BLOCK(4K) : ALIGN(4K) {
     *(.data)
 }
 /*unitialized read write data + stack*/
 .bss BLOCK(4K) : ALIGN(4K) {
     *(COMMON)
     *(.bss)
 }
}
