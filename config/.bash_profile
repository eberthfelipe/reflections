# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
yellow="\[\033[0;33m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory

#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

#PS1="$purple\u $blue\w$green`__git_ps1`$reset $"
#PS1="$purple\u$green\$`__git_ps1`$blue \w$reset $"
#PS1="$purple\u$green\$`__git_ps1`$blue \w$yellow\$(parse_git_branch)$reset $"

update_PS1 () {
    export PS1="$purple\u $blue\w$green`__git_ps1`$reset $"
}

shopt -u promptvars
PROMPT_COMMAND=update_PS1


# Notepad++
alias notepad="/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe"