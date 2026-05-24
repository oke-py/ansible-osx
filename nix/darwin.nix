{
  pkgs,
  username,
  ...
}:

{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";

  system.primaryUser = username;
  system.stateVersion = 7;

  users.users.${username}.home = "/Users/${username}";

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    curl
    fzf
    gh
    ghq
    git
    gnused
    gnutar
    jq
    mise
    starship
    tree
    wget
    yq
  ];

  system.defaults = {
    dock = {
      orientation = "right";
      minimize-to-application = true;
      show-recents = false;
    };

    finder = {
      AppleShowAllExtensions = true;
      NewWindowTarget = "Home";
      AppleShowAllFiles = true;
      FXPreferredViewStyle = "clmv";
    };

    screencapture = {
      type = "png";
      disable-shadow = true;
      location = "/Users/${username}/Pictures";
    };

    CustomUserPreferences = {
      "com.apple.desktopservices" = {
        DSDontWriteNetworkStores = true;
      };
      "com.apple.screencapture" = {
        name = "ss_";
      };
    };
  };
}
