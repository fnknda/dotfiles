{ config, pkgs, ... }:

{
	home.username = "fukuda";
	home.homeDirectory = "/home/fukuda";

	nixpkgs.config.allowUnfree = true;

	home.packages = with pkgs; [
		keepassxc
		inetutils
		man-pages
		docker

		zoxide
		bat
		eza
		fd
		ripgrep

		firefox
		zathura
		solaar
		flameshot

		telegram-desktop
		discord
		spotify
	];

	programs.bash = {
		enable = true;
		enableCompletion = true;
		historyControl = [ "ignoredups" ];
		shellOptions = [
			"extglob"
			"globstar"
			"lithist"
		];
		initExtra = ''
			eval "$(zoxide init bash)"
			[ -f ~/.bash_aliases ] && source ~/.bash_aliases
		'';
		bashrcExtra = ''
			set -o vi
			bind 'set completion-ignore-case on'
		'';
		shellAliases = {
			"ls"     = "eza";
			"g"      = "git";
			"gad"    = "git add";
			"gbr"    = "git branch";
			"gco"    = "git checkout";
			"gcm"    = "git commit";
			"gcp"    = "git cherry-pick";
			"gdf"    = "git diff";
			"glg"    = "git log --oneline --all --graph --decorate";
			"grm"    = "git remote";
			"gst"    = "git status";
			"gsw"    = "git switch";
			"prc"    = "perf record -F max -g";
			"prp"    = "perf report -g graph,0";
			"prpe"   = "perf report -g graph,0,callee";
			"todos"  = "rg 'TODO:|FIXME:'";
			"cd"     = "z";
		};
	};

	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		vimdiffAlias = true;
	};

	programs.git = {
		enable = true;
		userName = "Joao Fukuda";
		userEmail = "joao@fukuda.sh";
	};

	programs.kitty = {
		enable = true;
		font = {
			package = pkgs.fira-code-nerdfont;
			name = "FiraCode Nerd Font Mono";
			size = 13;
		};
		theme = "Gruvbox Dark";
		settings = {
			enable_audio_bell = false;
			cursor_shape = "block";
		};
	};

	home.file = {
		".gdbinit".source = configs/gdb;
		".config/i3/config".source = configs/i3;
		".config/nvim".source = configs/nvim;
		".tmux.conf".source = configs/tmux;
	};

	home.sessionVariables = {
		EDITOR = "nvim";
		TERMINAL = "kitty";
		BROWSER = "firefox";
	};

	programs.home-manager.enable = true;

	# This value determines the Home Manager release that your configuration is
	# compatible with. This helps avoid breakage when a new Home Manager release
	# introduces backwards incompatible changes.
	#
	# You should not change this value, even if you update Home Manager. If you do
	# want to update the value, then make sure to first check the Home Manager
	# release notes.
	home.stateVersion = "23.11"; # Please read the comment before changing.
}
