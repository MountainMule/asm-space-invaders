nasm bootloader.asm -f bin -o build/bootloader.bin
nasm space-invaders.asm -f bin -o build/space-invaders.bin

dd if=build/bootloader.bin of=build/image.bin bs=512 count=1
dd if=build/space-invaders.bin of=build/image.bin bs=512 count=2 seek=1
