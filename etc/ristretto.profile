# Firejail profile for ristretto
# Description: Lightweight picture-viewer for the Xfce desktop environment
# This file is overwritten after every install/update
# Persistent local customizations
include ristretto.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/ristretto
noblacklist ${HOME}/.Steam
noblacklist ${HOME}/.steam

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
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

private-cache
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
