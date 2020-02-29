# debian-postinstall

Various tools to bootstrap a debian minimal install.

## Create a list of all packages installed

```shell
dpkg-query --showformat='${Package}\n' --show > packages.list
```

## Install from a list of packages

```shell
for package in $(cat packages.list); do
  sudo apt install -y $package
done
```
