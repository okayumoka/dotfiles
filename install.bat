@echo off
@setlocal
cd %~dp0
set current=%~dp0

rem --------------------------------------
rem vsvim
rem --------------------------------------
rem mklink %HOME%"\.vsvimrc" "%current%vsvim\.vsvimrc"



rem --------------------------------------
rem vim and neovim
rem --------------------------------------

set vim_home=%HOME%\.vim

mkdir "%vim_home%"
mklink "%HOME%\.vimrc" "%current%vim\vimrc"
mklink "%HOME%\.gvimrc" "%current%vim\gvimrc"
mklink /D "%vim_home%\rc" "%current%vim\rc"


set nvim_home=%HOME%\.nvim
set nvim_initdir=%userprofile%\AppData\Local\nvim

mkdir "%nvim_home%"
mkdir "%nvim_initdir%"
mklink %nvim_initdir%"\init.vim" "%current%vim\vimrc"
mklink %nvim_initdir%"\ginit.vim" "%current%vim\gvimrc"
mklink /D "%nvim_home%\rc" "%current%vim\rc"



@endlocal
@echo on
