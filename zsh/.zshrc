# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# homebrew env
eval "$(/opt/homebrew/bin/brew shellenv)"
# custom functions
source ~/.zshrc-functions

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git nvm npm zsh-autosuggestions)

zstyle ':omz:plugins:nvm' autoload yes

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias ls="COLUMNS=80 eza --icons"
alias l="ls -lah"
alias lg="lazygit"
alias tree="ls --tree"

# key bindings
bindkey -s '^f' 'prj_search^M'
bindkey -s ^h "history_search\n"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# pnpm
export PNPM_HOME="/Users/giulioganci/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"



# Load Angular CLI autocompletion.
source <(ng completion script)
