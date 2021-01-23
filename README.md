# ansible-osx
Mac OS X configuration management using Ansible

## prerequisite

```bash
# install homebrew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

$ brew install ansible
```

## execute

```bash
$ ansible-playbook -i inventory/local playbooks/my-mac.yml --ask-become-pass
```

