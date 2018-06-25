# Ground Up
Programming from the Ground Up.

## Docker
```sh
docker run -it --name ground -v ~/GitHub/ground-up:/home gcc

docker container start ground

docker attach ground
```

## Run

```sh
as src/exit.s -o obj/exit.o
ld obj/exit.o -o exe/exit
exe/exit
echo $?

as src/maximum.s -o obj/maximum.o
ld obj/maximum.o -o exe/maximum
exe/maximum
echo $?

as --32 src/power.s -o obj/power.o
ld -m elf_i386 obj/power.o -o exe/power
exe/power
echo $?

as --32 src/factorial.s -o obj/factorial.o
ld -m elf_i386 obj/factorial.o -o exe/factorial
exe/factorial
echo $?

as --32 src/toupper.s -o obj/toupper.o
ld -m elf_i386 obj/toupper.o -o exe/toupper
exe/toupper src/toupper.s -o /tmp/toupper.s
```

## Assembly Language

### Register
- eax, accumulator register
- ebx, base register
- ecx, counter register
- edx, data register

- esi, source index register
- edi, destination index register

- esp, stack pointer register
- ebp, base pointer register

- eip, instruction register

- eflags

### Addressing mode

Memory Address Format: address|offset(%ebx, %edi|%esi, scale)

memory_address = address|offset + %ebx + scale * %edi|%esi


