cd %~dp0
mkdir %HOME%"\.vim
mkdir %HOME%"\.vim\rc
mklink %HOME%"\.vimrc" %HOME%"\dotfiles\.vimrc"
mklink %HOME%"\.gvimrc" %HOME%"\dotfiles\.gvimrc"
mklink %HOME%"\.vsvimrc" %HOME%"\dotfiles\.vsvimrc"
mklink %HOME%"\.vim\rc\dein.toml" %HOME%"\dotfiles\dein.toml"
mklink %HOME%"\.vim\rc\dein_lazy.toml" %HOME%"\dotfiles\dein_lazy.toml"
pause
