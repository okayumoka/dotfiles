@echo off
@setlocal
cd %~dp0
set current=%~dp0


rem --------------------------------------
rem vsvim
rem --------------------------------------
del %HOME%"\.vsvimrc"


rem --------------------------------------
rem vim
rem --------------------------------------
set vim_home=%HOME%\.vim

del %HOME%"\.vimrc"
del %HOME%"\.gvimrc"
rmdir %vim_home%"\rc"



rem --------------------------------------
rem neovim
rem --------------------------------------
set nvim_initdir=%userprofile%\AppData\Local\nvim
set nvim_home=%HOME%\.nvim

del "%nvim_initdir%\init.vim"
del "%nvim_initdir%\ginit.vim"
rem rmdir %vim_home%"\rc"


@endlocal
@echo on
