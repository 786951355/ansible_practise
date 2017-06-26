ulimit -u 62235
ulimit -SHn 65535

export HISTTIMEFORMAT="%F %T "
PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@\h \[\e[35;40m\]\W\[\e[0m\]]\\$ "
