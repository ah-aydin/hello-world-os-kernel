make link

if grub-file --is-x86-multiboot myos.bin; then
  echo multiboot confirmed

  mkdir -p isodir/boot/grub
  cp myos.bin isodir/boot/myos.bin
  cp grub.cfg isodir/boot/grub/grub.cfg
  grub-mkrescue -o myos.iso isodir
else
  echo the file is not multiboot
fi
