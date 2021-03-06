# Firejail profile for gucharmap
# Description: Unicode character picker and font browser
# This file is overwritten after every install/update
# Persistent local customizations
include gucharmap.local
# Persistent global definitions
include globals.local


include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
#net none - breaks dbus
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none

disable-mnt
private-bin gucharmap
private-cache
private-dev
private-etc alternatives,fonts
private-lib
private-tmp

memory-deny-write-execute

read-only ${HOME}
