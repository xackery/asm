run: build-asm
	cd bin && ./hello-asm

run-c: build-c
	cd bin && ./hello-c

run-gl: build-gl
	cd bin && ./hello-gl

build-gl:
	@mkdir -p bin build
	nasm -f elf64 hello-gl/hello-gl.asm -o build/hello-gl.o
	ld -o bin/hello-gl build/hello-gl.o --dynamic-linker=/lib64/ld-linux-x86-64.so.2 -lglfw -lGL
	chmod +x bin/hello-gl

build-asm:
	@mkdir -p bin build
	nasm -f elf64 hello/hello.asm -o build/hello.o
	ld -o bin/hello-asm build/hello.o

build-c:
	@mkdir -p bin build
	gcc hello-c/hello.c -S -o build/hello-c.s
	gcc build/hello-c.s -c -o build/hello-c.o
	gcc build/hello-c.o -o bin/hello-c
