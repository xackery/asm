```sh
# c to binary
gcc hello.c -S -o hello.S # convert to assembly
gcc hello.S -c -o hello.o # convert to object file, or gcc hello.c -c -o hello.o
gcc hello.o -o hello # convert object file to binary


gcc hello.asm -o hello.o # convert assembly to object file
gcc hello.o -o hello # convert object file to binary

gcc hello.asm -c -o hello # convert assembly to binary
chmod +x hello
./hello
```