# Favourites
# bespin, brewer, bright, chalk, dracula, eighties, gnome-dark, gruvbox-dark, monokao, nord, seti, tomorrow-night
zplug "chriskempson/base16-shell", use:"scripts/base16-eighties.sh"

zplug "rawkode/zsh-docker-run"
zplug "rawkode/zsh-kubectl-context-switcher", from:gitlab
zplug "rawkode/zsh-gcloud-context-switcher", from:gitlab

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

zplug "plugins/z",                      from:oh-my-zsh
zplug "plugins/command-not-found",      from:oh-my-zsh
zplug "plugins/colored-man-pages",      from:oh-my-zsh
zplug "plugins/per-directory-history",  from:oh-my-zsh
zplug "plugins/sudo",                   from:oh-my-zsh

zplug 'desyncr/auto-ls'
zplug "hlissner/zsh-autopair"
zplug "Valiev/almostontop"

#zplug mafredri/zsh-async, from:github
#zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
#zplug "themes/agnoster", from:oh-my-zsh, as:theme
#zplug "eendroroy/alien"
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
