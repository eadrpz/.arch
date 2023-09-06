if status --is-login
    if test (tty) = /dev/tty1
        exec Hyprland
    end
end

# function fish_prompt -d "Write out the prompt"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored
#     # $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '%s@%s %s%s ' $hostname \
#         (set_color $fish_color_cwd) (prompt_pwd) (set_color $fish_color_cwd)
# end
#

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

# function fish_prompt
    # choose astronaut
# end

alias cat='bat --style=plain --paging=never' # In debian derivatives i>
alias ls='exa --group-directories-first'
alias tree='exa -T'
alias la='exa -la --group-directories-first'
alias l='exa -l'
alias vih='nvim .'
alias svih='sudo nvim .'
alias vi='nvim $1'
alias svi='sudo nvim $1'
alias git-user='git config --global user.name $1'
alias git-mail='git config --global user.email $1'
alias git-creds='git config --global credential.helper $1'
alias pkg='sudo pacman'

function fish_greeting
end


