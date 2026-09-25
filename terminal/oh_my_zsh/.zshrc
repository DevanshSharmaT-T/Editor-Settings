# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Enables Kitty to track your current directory for new tabs
# [[ "$TERM" == "xterm-kitty" ]] && alias kitty="kitty +kitten shell_integration"

# SET THE THEME
ZSH_THEME="dstufft"

# 1. Added zsh-syntax-highlighting to the plugins list
plugins=(git asdf zsh-syntax-highlighting)

# Load Oh My Zsh framework
source $ZSH/oh-my-zsh.sh

# --- User Customizations ---

export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$HOME/.local/bin:$PATH"
export PAGER="vimpager"
export MANPAGER="vimpager"
export TERM=xterm-256color
export EDITOR="zed --wait"
export VISUAL="zed --wait"
export GIT_EDITOR="zed --wait"

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ASDF Setup (Removed the invalid completion line that caused errors)
. "$HOME/.asdf/asdf.sh"

# Hyprland Autostart
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]]; then
    export WLR_NO_HARDWARE_CURSORS=1
    exec dbus-run-session Hyprland
fi

typeset -U PATH
setopt PROMPT_SUBST

# --- FINAL ABSOLUTE PROMPT OVERRIDE ---

function get_git_status_clean() {
  git rev-parse --is-inside-work-tree &>/dev/null || return 0
  local branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
  local dirty=""
  if [[ -n $(git status -s 2>/dev/null) ]]; then
    dirty="%f⚠️"
  fi
  echo " %F{magenta}($branch)%f$dirty"
}

function precmd() {
  PROMPT='%F{green}%c%f$(get_git_status_clean) => '
}

# 2. Source the highlighting script AT THE VERY BOTTOM
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s "/home/dioe/.gvm/scripts/gvm" ]] && source "/home/dioe/.gvm/scripts/gvm"

# bun completions
[ -s "/home/dioe/.bun/_bun" ] && source "/home/dioe/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Custom Neovim launcher with font swapping
nvi() {
    kitten @ load-config -o "font_family=Iosevka Nerd Font" -o "modify_font cell_height 105%"
    command nvim "$@"
    kitten @ load-config -o "font_family=FantasqueSansM Nerd Font Mono Bold" -o "modify_font cell_height 100%"
}

alias vim='nvi'
alias nvim='nvi'
alias claude1='HOME="$HOME/.claude-account-1" claude'
alias claude2='HOME="$HOME/.claude-account-2" claude'
zed1() {
  HOME="$HOME/.claude-account-1" zed "$@"
}

zed2() {
  HOME="$HOME/.claude-account-2" zed "$@"
}

# Lazygit has no official WakaTime plugin, so this sends a heartbeat on launch
# and every 2min while it's open, tagged to whatever repo it's launched in.
lazygit() {
  local project="$(basename "$(git rev-parse --show-toplevel 2>/dev/null || pwd)")"
  local hb_args=(--entity lazygit --entity-type app --project "$project" --category "code reviewing" --plugin "lazygit-wakatime/0.1.0")

  wakatime-cli "${hb_args[@]}" &>/dev/null
  ( while sleep 120; do wakatime-cli "${hb_args[@]}" &>/dev/null; done ) &
  local hb_pid=$!

  command lazygit "$@"

  kill "$hb_pid" &>/dev/null
}
