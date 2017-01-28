OUTPUT_FORMAT(binary)
SECTIONS
{
	. = 0x3C00000;
	.komh : 
	{
		*(.komh);
	}
	.text :
	{
		*(.text);
	}
	.data :
	{
		*(.data);
		*(.bss);
		*(.rodata);
	}
	_heap = ALIGN(4);
}
