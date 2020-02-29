# debian-postinstall

Various tools to bootstrap a debian minimal install.

## Grab list of all packages installed

```shell
dpkg-query --showformat='${Package}\n' --show
```
