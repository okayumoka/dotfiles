# nodebrew (nodejs)
set -x PATH $HOME/.nodebrew/current/bin $PATH

# Java
set -x JAVA_HOME (/usr/libexec/java_home -v 10)

# General
set -x LANG "ja_JP.UTF-8"

# bobthefish
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_date_format "+%Y/%m/%d(%a) %H:%M:%S"
# set -g theme_newline_cursor yes
set -g theme_color_scheme dracula
# set -g theme_color_scheme zenburn

# viでvim
alias vi='/usr/local/bin/vim'
# vimでnvim
alias vim='/usr/local/bin/nvim'
# rmでゴミ箱に入れる
alias rm='rmtrash'

