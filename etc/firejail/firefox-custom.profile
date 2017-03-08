# Firejail profile for Mozilla Firefox (Iceweasel in Debian)

noblacklist ~/.mozilla
noblacklist ~/.cache/mozilla
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-common-custom.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-proc.inc

blacklist ${HOME}/.config/user-dirs.dirs
blacklist ${HOME}/.config/dconf

blacklist /etc/passwd
blacklist /etc/group

blacklist /sys
blacklist /var
blacklist /srv


mkdir ~/.mozilla
whitelist ~/.mozilla
mkdir ~/.cache/mozilla/firefox
whitelist ~/.cache/mozilla/firefox
whitelist ~/dwhelper
whitelist ~/.zotero
whitelist ~/.pentadactylrc
whitelist ~/.pentadactyl
whitelist ~/.keysnail.js
whitelist ~/.config/gnome-mplayer
whitelist ~/.config/pulse
whitelist ~/.cache/gnome-mplayer/plugin
whitelist ~/.pki

include /etc/firejail/whitelist-common.inc

private-etc passwd,group,hostname,hosts,localtime,nsswitch.conf,resolv.conf,gtk-2.0,pango,fonts,mime.types,asound.conf,pulse,ssl,ca-certificates

private-tmp

private-dev

caps.drop all
nonewprivs
noroot
nogroups
seccomp
tracelog

shell none

blacklist /proc/**
blacklist /proc/self
blacklist /proc/thread-self
