{ modulesPath, pkgs, ... }: {
  imports = [ "${modulesPath}/virtualisation/amazon-image.nix" ];
  users.users.root.openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILIqAdolJ5EQgszdsbzcbbIBZ+LMmZEOISlsCkcER/Ne" ];
  environment.systemPackages = with pkgs; [
    git
    neovim
    nil # nix code language server
    nixpkgs-fmt # nix code formatter
    vim
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = "chat-atlbitlab-com";
  system.stateVersion = "24.05";
}
