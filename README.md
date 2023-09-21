# Fukuda's dotfiles

![POGpowered](https://images.uncyc.org/pt/5/5f/Pogpowered.gif)

My configuration files for Linux. I try to keep all important configurations here as I frequently wipe my notebook, create servers and VMs but always like to keep things the same.

## How to use:

First you must clone, download, reproduce, reverse engineer or otherwise acquire this repository. The easiest way goes like this:

```bash
git clone https://gitlab.com/_joao.fukuda/dotfiles.git
cd dotfiles
./install
```

This `./install` script installs `Starship` terminal prompt and `NeoVim`'s `VimPlug`, AND --- last but not least ---  it also adds the file `.dotfiles.path` to your home directory, which helps some of my scripts find the dotfiles installation directory through the environmental variable `DF` (which is, to no surprise, set to the contents of what's inside of `~/.dotfiles.path`).

Then just use `stow` to manage the many SymLinks (or create them yourself if you identify as a *digital masochist*).

`Stow` installs **packages** and there are three packages in this repository:

* `base`: Programs that have the capability to be run on any computer (server, pc, disposable, smartphone... You name it)
* `gui`: Programs that I use for my graphical interface (servers for example won't have this)
* `extras`: Might use, might not... Who knows. These programs are not that useful or are otherwise situational

For every package you want installed, just do:

```bash
stow -t ~ -S <package_name>
```

Where package name is one of `base`, `gui` or `extras`.

And to remove said packages, just do:

```bash
stow -t ~ -D <package_name>
```

### Set Default applications

Through `xdg`:

```bash
xdg-settings get default-web-browser
xdg-settings set default-web-browser org.qutebrowser.qutebrowser.desktop
```

## Programs:

Here in this repository are configuration files for the following programs:

#### Base

* bash (Linux' shell)
* clangd (lsp for c/c++)
* clang-format (source code auto formatter)
* gdb (C/C++ debugger)
* git (version manager)
* neovim (text editor)
* tmux (terminal window manager)

#### Gui

* i3-gaps (window manager)
* kitty (terminal)
* picom (window compositor)
* polybar (i3status alternative)
* qutebrowser (vim-like browser)
* rofi (launcher)
* xorg-xinit

#### Extras

* elinks (terminal browser)

### And here
is a list of some other programs I (sometimes) like to use with the ones mentioned above:

#### Favorites
Almost indispensable programs

* clang (C/C++ Compiler)
* cmake (build system for C/C++)
* docker (containers)
* dunst (notification daemon)
* entr (command executer when modifying files)
* keepassxc-cli (password manager)
* man-db (linux manual)
* man-pages (linux manual)
* proxychains (proxy client)
* stow (symlink farm manager)
* tomb (encrypted files as device)
* torbrowser-launcher (private browser)
* transmission-cli (torrent client)
* vlc (media player)
* weechat (IRC client)
* xdotool (automate keystrokes and clicks)
* xournalpp (wacom tablet note taking)
* yay (package manager)
* zathura (pdf reader)

#### Bloated favorites
My guilty pleasures

* bat (cat alternative)
* exa (ls alternative)
* fd (find alternative)
* feh (for background image)
* gpick (color palette manager)
* lazygit (tui git client)
* ranger (file manager)
* ripgrep (grep alternative)
* screenkey (shows keypress on screen)
* tealdeer (tl;dr for linux commands)

#### Neutral stance
Neither good nor bad... Useful nonetheless

* autotools
* bluetoothctl (bluetooth devices manager)
* bluez (bluetooth firmware)
* chrony (Network Time Protocol daemon)
* grub
* light (hardware brightness control)
* networkmanager
* noto-fonts (monospace font)
* noto-fonts-emojis (special characters)
* noto-fonts-cjk (special characters)
* noto-fonts-extra (special characters)
* ttf-fira-code (font with programming ligatures)
* openssh
* starship (multi shell prompt)
* teeldear (man, but tips and tricks)
* vlc (media player)
* xorg-server (window server)

#### Alternatives
Alternative programs that might substitute some of the above mentioned

* alacritty (terminal)
* dmenu (launcher)
* firefox (browser)
* gcc (Compiler Collection)
* i3status (status bar)
* librewolf (browser)
* lxd (containers on linux)
* vim (text editor)
* zsh (shell)
