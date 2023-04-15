# Assembly Sample HelloWorld
Sample assembly program to write "Hello World!" in GNU/Linux console (working only for 64bits cpu)

# Dependencies
- NASM
- ld

## How to run it?
```bash
nasm -f elf64 main.asm -o main.o```

After getting the object file you'll need to link it with a linker (LD for our example)

```bash
ld main.o -o main```

And now you can run it by doing:

```bash
./main```
