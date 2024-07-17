{
	# Enable OpenSSH daemon
	services.openssh.enable = true;

	# Optional: Customize OpenSSH configuration
	#services.openssh.protocol = "2";
	services.openssh.permitRootLogin = "no";
	services.openssh.passwordAuthentication = false;
	services.openssh.port = 22;

	# Bootloader.
	boot.loader.systemd-boot.enable = true;

	# Enable networking
	networking.networkmanager.enable = true;

	# Set your time zone.
	time.timeZone = "America/Los_Angeles";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";

	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_US.UTF-8";
		LC_IDENTIFICATION = "en_US.UTF-8";
		LC_MEASUREMENT = "en_US.UTF-8";
		LC_MONETARY = "en_US.UTF-8";
		LC_NAME = "en_US.UTF-8";
		LC_NUMERIC = "en_US.UTF-8";
		LC_PAPER = "en_US.UTF-8";
		LC_TELEPHONE = "en_US.UTF-8";
		LC_TIME = "en_US.UTF-8";
	};
	environment.systemPackages = [
		nano
		vim
		wget
		podman
		neovim
		util-linux
		usbutils
		pciutils
		tmux
		tmate
		htop
		bind
	];

	system.stateVersion = "24.05";
}
