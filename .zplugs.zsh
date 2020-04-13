#!/usr/bin/env zsh
# this allows zplug to update itself on `zplug update`
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# oh-my-zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/{clipboard,completion,directories,termsupport,key-bindings,history}.zsh"
for plugin in docker fasd docker-compose extract command-not-found fd gcloud git-auto-fetch gpg-agent helm kubectl ubuntu web-search last-working-dir
do
    zplug "plugins/$plugin", from:oh-my-zsh
done
GIT_AUTO_FETCH_INTERVAL=1800

#### ZSH MAGIC
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=cyan,fg=white,bold"
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

ZSH_PECO_HISTORY_DEDUP='true'
zplug "jimeh/zsh-peco-history", defer:2

zplug "peterhurford/git-it-on.zsh"

zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

zplug "MichaelAquilina/zsh-you-should-use"
YSU_HARDCORE=1

zplug "hlissner/zsh-autopair", defer:2

zplug "Tarrasch/zsh-bd"
zplug "brymck/print-alias"
zplug "laggardkernel/zsh-thefuck"