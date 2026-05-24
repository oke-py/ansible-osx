# ansible-osx

Mac OS X configuration management using Ansible

## nix-darwin

This branch contains an initial nix-darwin + Home Manager configuration.

### prerequisite

Install Nix first. nix-darwin currently recommends a flake-based setup.

### bootstrap

```bash
$ nix flake lock
$ sudo nix run nix-darwin/master#darwin-rebuild -- switch --flake .#uranus
```

### apply changes

```bash
$ sudo /run/current-system/sw/bin/darwin-rebuild switch --flake .#uranus
```

### update inputs

```bash
$ nix flake update
$ sudo /run/current-system/sw/bin/darwin-rebuild switch --flake .#uranus
```

## prerequisite

```bash
# install homebrew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install uv
$ brew install uv

# install dependencies
$ uv sync
```

## execute

```bash
$ uv run ansible-playbook -i hosts.yml playbooks/my-mac.yml --ask-become-pass
```
