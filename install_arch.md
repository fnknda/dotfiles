# My Simple Arch Linux Install Manual

## Pre-installation

### Download the image

[From here](https://archlinux.org/download/)

### Download the USB burner

[Balena Etcher](https://www.balena.io/etcher/)

Obs.: To run the AppImage (on arch), download the package `fuse2`.

### Create the bootable image

Use a USB stick with at least 8GiB.

## Installation

### Load BR keymap

```bash
loadkeys br-abnt
```

### Reorder mirrorlist

```bash
reflector -c br -f 10 | sed '/rsync/d' > /etc/pacman.d/mirrorlist
```

### Format disk

With `fdisk`:

```
g - Change to GPT partition table
n - new partition
	set size like +512MB and -16GB
d - delete partition
t - change partition type
	1 - EFI partition (/boot/efi)
	19 - Linux Swap (/tmp)
	20 - Linux Filesystem (/)
```

My default partition is this:

```
Partition 1: 512MB - EFI partition
Partition 2: What's left - Linux Filesystem
Partition 3: 2x RAM - Linux Swap
```

### Create the partitions

```bash
mkfs.vfat /dev/partition1
mkfs.ext4 /dev/partition2
mkswap /dev/partition3
```

### Mount partitions

```bash
mount /dev/partition1 /mnt
mkdir -p /mnt/boot/efi && mount /dev/partition2 /mnt/boot/efi
swapon
```

### Install

```bash
pacstrap /mnt base linux linux-firmware \
	grub efibootmgr base-devel git \
	neovim sudo tmux gcc clang cmake make \
	xorg-server xorg-xinit i3-gaps noto-fonts{,-extra,-cjk,-emojis} alacritty
```

### Create fstab

```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

### chroot into the new formatted computer

```bash
arch-chroot /mnt
```

### Configure local, time and network

```bash
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc --utc
# Uncomment en_US.UTF-8 and other languages you wish to use
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "KEYMAP=br-abnt" > /etc/vconsole.conf
echo "arch-computer" > /etc/hostname
# Config /etc/hostname to accept 127.0.0.1 and ::1 as localhost
```

### Create user and set passwords

```bash
passwd
useradd -m coccafukuda
passwd coccafukuda
```

### Install/config grub

```bash
grub-install --target=x86_64-efi --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
```

## Done; power off, take USB out and power on

```bash
logout
poweroff
```

