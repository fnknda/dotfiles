# Fukuda's dotfiles

My configuration files for Linux. I try to keep all important configurations here as I frequently wipe my notebook, create servers and VMs but always like to keep things the same.

## How to use:

Just use `stow` to manage links:

There are three packages:
* Base: Programs that have the capability to be run on any computer (server, pc, disposable, smartphone... You name it)
* Gui: Programs that I use for my graphical interface (servers for example won't have this)
* Extras: Might use, might not... Who knows. These programs are not that useful or are otherwise situational

For every package you want installed, just do:

```
stow -t ~ -S <package_name>
```

Where package name is one of `base`, `gui` or `extras`.

And to remove said packages, just do:

```
stow -t ~ -D <package_name>
```

## Programs:

Here in this repository are configuration files for the following programs:

#### Base

* bash (Linux' shell)
* neovim (text editor)
* starship (multi shell prompt)
* tmux (terminal window manager)

#### Gui

* alacritty (terminal)
* i3-gaps (window manager)
* picom (window compositor)
* polybar (i3status alternative)
* rofi (dmenu alternative)

#### Extras

* elinks (terminal browser)

### And here
is a list of some other programs I (sometimes) like to use with the ones mentioned above:

#### Favorites
Almost indispensable programs

* cmake
* gcc
* git (version manager)
* keepassxc-cli (password manager)
* librewolf (browser)
* lxd (containers on linux)
* stow (symlink farm manager)
* tomb (encrypted files as device)
* torbrowser (private browser)

#### Bloated favorites
My guilty pleasures

* bat (cat alternative)
* exa (ls alternative)
* fd (find alternative)
* feh (for background image)
* ripgrep (grep alternative)

#### Neutral stance
Neither good nor bad... Useful nonetheless

* autotools
* dmenu (launcher)
* grub
* light (hardware brightness control)
* networkmanager
* noto-fonts (special characters)
* openssh
* ttf-nerd-fonts-symbols-mono (symbols)
* xorg-server (window server)
* xorg-xinit

#### Alternatives
Alternative programs that might substitute some of the above mentioned

* i3status (status bar)
* vim (text editor)

