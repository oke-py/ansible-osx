# ansible-osx

Mac OS X configuration management using Ansible

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
