# Fukuda's dotfiles

![POGpowered](https://images.uncyc.org/pt/5/5f/Pogpowered.gif)

My configuration files for Linux. I try to keep all important configurations here as I frequently wipe my notebook, create servers and VMs but always like to keep things the same.

## How to use:

First, you must clone, download, reproduce, reverse engineer or otherwise acquire this repository. The easiest way goes like this:

```bash
git clone https://github.com/JoaoFukuda/dotfiles.git
cd dotfiles
```

Second, you need to install Packer, the neovim package manager used in this configuration. Run the `install` script:

```bash
./install
```

Then, use `stow` to manage the symbolic links (or create them yourself if you identify as a *digital masochist*).

`Stow` installs **packages**, and there is but one package in this repository:

* `home`: Home-Manager configuration with all basic programs configured

Just do:

```bash
stow -t ~ -S home
```

And to remove said package, just do:

```bash
stow -t ~ -D home
```

You can also check out my current NixOS configuration on the `os` directory.

## Programs:

Here in this repository are configuration files for the following programs:

#### OS

* neovim
* home-manager

#### Home

##### core

* bash
* neovim
* git

* keepassxc
* inetutils
* man-pages
* docker

##### bloat

* zoxide
* bat
* eza
* fd
* ripgrep

##### gui

* kitty

* firefox
* zathura
* solaar
* flameshot

##### extra

* telegram-desktop
* discord
* spotify
