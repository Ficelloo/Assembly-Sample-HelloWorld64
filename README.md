# Assembly Sample HelloWorld
Sample assembly program to write "Hello World!" in GNU/Linux console (working only for 64bits cpu)

# Dependencies
- NASM
- ld

## How to run it?

`nasm -f elf64 main.asm -o main.o`

After getting the object file you'll need to link it with a linker (LD for our example)

`ld main.o -o main`

And now you can run it by doing:

`./main`

Note: You'll probably need to set write permission to execute file

`chmod +x main`
