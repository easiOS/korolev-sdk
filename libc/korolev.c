extern void main(void);

struct {
	char sign[4];
	void (*entry)(void);
	char reserved[16];
} __korolev_kom_header __attribute__((section (".komh"))) = {
	{'K', 'O', 'M', '0'},
	main,
	{'\0'}
};
