@echo off
@setlocal
cd %~dp0
set current=%~dp0

rem --------------------------------------
rem vsvim
rem --------------------------------------
rem mklink %HOME%"\.vsvimrc" "%current%vsvim\.vsvimrc"



rem --------------------------------------
rem vim
rem --------------------------------------

set vimhome=%HOME%\.vim

mkdir %vimhome%
rem mkdir %vimhome%\rc
mklink %HOME%"\_vimrc" "%current%vim\vimrc"
mklink %HOME%"\_gvimrc" "%current%vim\gvimrc"
mklink /D %vimhome%"\rc" "%current%vim\rc"



rem --------------------------------------
rem neovim
rem --------------------------------------
rem set nviminitdir=%userprofile%\AppData\Local\nvim
rem set nvimhome=%HOME%\.nvim
rem mkdir "%nviminitdir%"
rem mkdir "%nvimhome%"
rem mkdir "%nvimhome%\rc"
rem mklink "%nviminitdir%\init.vim" "%current%neovim\init.vim"
rem mklink "%nviminitdir%\ginit.vim" "%current%neovim\ginit.vim"
rem mklink "%nvimhome%\rc\dein.toml" "%current%neovim\dein.toml"
rem mklink "%nvimhome%\rc\dein_lazy.toml" "%current%neovim\dein_lazy.toml"


@endlocal
@echo on
