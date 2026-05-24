{
  lib,
  username,
  ...
}:

{
  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Naoki Oketani";
        email = "okepy.naoki@gmail.com";
      };
      color.ui = true;
      core.editor = "vim";
      pull.ff = "only";
      ghq.root = "/Users/${username}/src";
    };
  };

  home.file.".zshrc".source = ./zshrc;
  home.file.".ssh/config".source = ../roles/common/files/ssh/config;

  home.activation.createSshDirs = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    $DRY_RUN_CMD mkdir -p "$HOME/.ssh/github"
    $DRY_RUN_CMD chmod 700 "$HOME/.ssh" "$HOME/.ssh/github"
    $DRY_RUN_CMD chmod 600 "$HOME/.ssh/config" 2>/dev/null || true
  '';
}
