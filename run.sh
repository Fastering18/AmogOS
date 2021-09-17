if ! command -v nasm &> /dev/null
then
    echo "`nasm` command was not installed, please download it at https://www.nasm.us/"
    exit 1
fi

if ! command -v qemu-system-x86_64 &> /dev/null
then
    echo "`qemu-system-x86_64` command was not found, please download it at https://www.qemu.org/download/"
    exit 1
fi

# compile sussy code with nasm
nasm -f bin boot.asm -o boot.bin

# start the sussy with qemu emulator
qemu-system-x86_64 boot.bin