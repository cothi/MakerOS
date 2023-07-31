# !/bin/bash

qemu-img create -f raw $HOME/disk.img 200M
mkfs.fat -n 'MIKAN OS' -s 2 -f 2 -R 32 -F 32 disk.img
mkdir -p mnt
sudo mount -o loop $HOME/disk.img mnt
sudo mkdir -p mnt/EFI/BOOT 
sudo cp $HOME/BOOTX64.EFI mnt/EFI/BOOT/BOOTX64.EFI
sudo umount mnt
