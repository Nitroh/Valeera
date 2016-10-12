#include <stdio.h>

int
main(int argc, char *argv[])
{
	if (argc != 2)
	{
		printf("Expected 1 argument, got %d", argc - 1);
		return 1;
	}

	FILE *file = fopen(argv[1], "rb");
	if(file == NULL)
	{
		printf("File not found: %s", argv[1]);
		return 1;
	}
}