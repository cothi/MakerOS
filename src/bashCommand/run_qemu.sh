#! /bin/bash

qemu-system-x86_64  \
  -drive if=pflash,file=$HOME/git/cothi/MakerOS/src/devenv/OVMF_CODE.fd \
  -drive if=pflash,file=$HOME/git/cothi/MakerOS/src/devenv/OVMF_VARS.fd \
  -hda disk.img 
