{ config, lib, pkgs, ... }:

{
	imports =
		[
		./hardware-configuration.nix
		];

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	networking.hostName = "note";
	networking.networkmanager.enable = true;

	time.timeZone = "America/Sao_Paulo";

	i18n.defaultLocale = "en_US.UTF-8";
	console = {
		font = "Lat2-Terminus16";
		useXkbConfig = true; # use xkb.options in tty.
	};

	services.xserver = {
		enable = true;
		xkb.layout = "us";
		autoRepeatDelay = 200;
		autoRepeatInterval = 10;

		desktopManager = {
			xterm.enable = false;
		};

		displayManager = {
			defaultSession = "none+i3";
		};

		windowManager.i3 = {
			enable = true;
			extraPackages = with pkgs; [
				dmenu
				i3status
				i3lock
			];
		};
	};

	sound.enable = true;
	hardware.pulseaudio.enable = true;

	services.xserver.libinput.enable = true;

	virtualisation.docker.enable = true;

	users.users.fukuda = {
		isNormalUser = true;
		extraGroups = [ "wheel" "docker" ];
	};

	nix.settings.allowed-users = [ "fukuda" ];

	environment.systemPackages = with pkgs; [
		neovim
		home-manager
	];

	programs.mtr.enable = true;
	programs.gnupg.agent = {
		enable = true;
		enableSSHSupport = true;
	};

	services.openssh.enable = true;

	networking.firewall.enable = false;

	# Copy the NixOS configuration file and link it from the resulting system
	# (/run/current-system/configuration.nix). This is useful in case you
	# accidentally delete configuration.nix.
	# system.copySystemConfiguration = true;
	
	# This option defines the first version of NixOS you have installed on this particular machine,
	# and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
	#
	# Most users should NEVER change this value after the initial install, for any reason,
	# even if you've upgraded your system to a new NixOS release.
	#
	# This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
	# so changing it will NOT upgrade your system.
	#
	# This value being lower than the current NixOS release does NOT mean your system is
	# out of date, out of support, or vulnerable.
	#
	# Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
	# and migrated your data accordingly.
	#
	# For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
	system.stateVersion = "23.11"; # Did you read the comment?
}
