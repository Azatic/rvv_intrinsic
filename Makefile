com:
	gcc-10 -march=rv64imafdcv0p7 -misa-spec=20191213 vle64.c 
.PHONY: example
example:
	gcc-10 -march=rv64imafdcv0p7 -misa-spec=20191213 simple_example.c -o example
	./example
asm:
	gcc-10 -march=rv64imafdcv0p7 -misa-spec=20191213 simple_example.c -S -o example.s
