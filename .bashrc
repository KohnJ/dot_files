#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# list command colors
alias ls='ls --color=auto'

# code alias per quarter
alias cdCode='cd ~/Desktop/Winter\ 18/CSCI_301/HW'

# ssh to Western Labs alias
alias cdWWU='ssh -p 922 kohnj@linux.cs.wwu.edu'
alias scpWWU='scp -P 922 kohnj@linux.cs.wwu.edu:'

# find alias
# alias find='find . -print0 -type f -name'

# grep alias
alias grep='grep --color=auto'

# diff alias
alias diff='colordiff --unchanged-line-format="" --old-line-format="" --new-line-format=":%dn: %L"'

# stupid wifi alias
alias dowifi='sudo ifconfig wlo1 down && sudo netctl start wlo1-HOME-BDB8-2.4'

# dope countdown alias
alias stopwatch='date1=`date +%s`; while true; do 
   echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
done'

# gdbetter alias
alias gdb='gdb -q'
alias GDB='gdb -q -tui'

# Name / comp setup
PS1='[\u@\h \W]\$ '

# Name / comp colors
export PS1="\[\033[38;5;28m\][\[$(tput sgr0)\]\[\033[38;5;97m\]\u\[$(tput sgr0)\]\[\033[38;5;28m\]@\[$(tput sgr0)\]\[\033[38;5;97m\]\H\[$(tput sgr0)\]\[\033[38;5;28m\]]\\$\[$(tput sgr0)\033[38;5;26m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Import colorscheme from 'wal'
(wal -r &)
