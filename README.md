# Fukuda's dotfiles

My configuration files for Linux. I try to keep all important configurations here as I frequently wipe my notebook, create servers and VMs but always like to keep things the same.

## How to use:

First you must clone, download, reproduce, reverse engineer or otherwise acquire this repository. The easier way goes like this:

```
git clone https://gitlab.com/_joao.fukuda/dotfiles.git
cd dotfiles
./install
```

This install script installs `Starship`'s requirements (but you still have to put some things on your `.bashrc`) and `NeoVim`'s `VimPlug`, BUT -- this is the most important part of install --  it also configures `.dotfiles.path` on the home directory, which helps some of my scripts find home through the environmental variable `DF`.

Then just use `stow` to manage the many SymLinks (or create them your own if you are a *digital masochist*).

`Stow` installs packages and there are three packages in this repository:
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
* dunst (notification daemon)
* i3-gaps (window manager)
* picom (window compositor)
* polybar (i3status alternative)
* qutebrowser (vim-like browser)
* rofi (launcher)

#### Extras

* elinks (terminal browser)

### And here
is a list of some other programs I (sometimes) like to use with the ones mentioned above:

#### Favorites
Almost indispensable programs

* cmake
* docker (containers)
* entr (command executer when modifying files)
* gcc
* git (version manager)
* keepassxc-cli (password manager)
* screenkey (shows keypress on screen)
* stow (symlink farm manager)
* tomb (encrypted files as device)
* torbrowser (private browser)
* transmission (torrent client)
* weechat (IRC client)
* xdotool (automate keystrokes and clicks)
* xournalpp (wacom tablet note taking)
* zathura (pdf reader)

#### Bloated favorites
My guilty pleasures

* bat (cat alternative)
* exa (ls alternative)
* fd (find alternative)
* feh (for background image)
* gpick (color palette manager)
* ripgrep (grep alternative)

#### Neutral stance
Neither good nor bad... Useful nonetheless

* autotools
* bluetoothctl (bluetooth devices manager)
* bluez (bluetooth firmware)
* chrony (Network Time Protocol daemon)
* grub
* light (hardware brightness control)
* networkmanager
* noto-fonts (special characters)
* openssh
* teeldear (man, but tips and tricks)
* ttf-nerd-fonts-symbols-mono (symbols)
* vlc (media player)
* xorg-server (window server)
* xorg-xinit

#### Alternatives
Alternative programs that might substitute some of the above mentioned

* dmenu (launcher)
* i3status (status bar)
* librewolf (browser)
* lxd (containers on linux)
* vim (text editor)
* zsh (shell)

