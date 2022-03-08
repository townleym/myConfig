
# Prompt colors from: https://wiki.archlinux.org/index.php/Color_Bash_Prompt

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# prompt using above colors; heckuva lot easier to read!
# export PS1="\[$txtylw\][\!] \[$txtcyn\]\h:\W \[$txtrst\]\$ \[\033[s\]" 
export PS1="\[$txtylw\][\t] \[$txtcyn\]\h:\W \[$txtrst\]\$ \[\033[s\]" 

# http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# export PS1="\[\e[36;1m\]\u:\W > \[\e[0m\]"

# some aliases to make life better
# directory navigation
alias ..='cd ..'
alias .h='cd ~'
alias .d='cd ~/Documents'
# alias .r='cd ~/Documents/Diss'
# alias .m='cd ~/Documents/Geog/MigProject/STEM'
alias .c='cd ~/Documents/code'
alias .od='cd OneDrive\ -\ ICF/'

# command shortcuts
alias fhere='find . -iname '
alias R='R --no-save --no-restore-data'

# for my oft-used find | grep
alias xgrep='xargs -I {} grep -Hn' # use: fhere <file> | xgrep 'string' {}

# Some 'ls' aliases
alias ls='ls -G'	# Add color
alias ll='ls -alhF'	# long listing
alias lt='ll -tr'	# by time modified, most recent last
alias lu='ll -ur'	# by time accessed, most recent last
alias lk='ll -Sr'	# by size, largest last

# aliases to toggle show/hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


# for iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

