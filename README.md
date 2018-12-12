# ansible-osx
Mac OS X configuration management using Ansible

## prerequisite

```bash
# install homebrew
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$ brew install ansible
```

## execute

```bash
$ ansible-playbook -i inventory/local playbooks/my-mac.yml
```

