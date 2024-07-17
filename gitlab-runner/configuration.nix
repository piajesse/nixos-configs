{ config, pkgs, ... }:

{
	imports = [
		../allservers.nix
		../accelerate-networks-servers.nix
	];

	networking.hostName = "gitlab-runner"; # Define your hostname.
	system.stateVersion = "24.05";
}

