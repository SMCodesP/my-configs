# Set up the prompt
ZSH_THEME="spaceship"
export ZSH="/home/smcodes/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
  node
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_NODE_SYMBOL="⬢ "
SPACESHIP_NODE_COLOR="green"
SPACESHIP_NODE_SHOW=true

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/android-studio/bin
export GOOGLE_APPLICATION_CREDENTIALS="/home/smcodes/Documentos/redeheroes-smcodes.json"

export NVM_DIR="$HOME/.nvm"
export PATH="$NVM_DIR/versions/node/$(<$NVM_DIR/alias/default)/bin:$PATH"

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
