# firejail-jailhouse
Firejail profiles

## Requirements
[Firejail](https://github.com/netblue30/firejail)
### Optional / works well with
Firefox profile - [Profile-sync-daemon](https:// wiki.archlinux.org/index.php/Profile-sync-daemon)
CONFIG_USER_NS - Kernel config for unprivileged user namespace support

## Install
1. Put the [program launchers](https://github.com/saildata/firejail-jailhouse/tree/master/usr/local/bin) in a location that will be the first found in your $PATH. See `firejail (1) DESKTOP INTEGRATION`. `/usr/local/bin` seems to be a sane default.
2. Copy the [modified master profiles](https://github.com/saildata/firejail-jailhouse/tree/master/etc/firejail) to your main firejail config folder, which is probably `/etc/firejail`.
3. *Optional* Modify the `.desktop` file launchers if necessary so that the exec directives point to the location specified in (1).

## Notes
Feel free to clone, fork, modify, and send pull requests for additions, errors or omissions.
Cheers -
