@echo off
@setlocal
cd %~dp0
set current=%~dp0


rem --------------------------------------
rem vsvim
rem --------------------------------------
del %HOME%"\_vsvimrc"


rem --------------------------------------
rem vim
rem --------------------------------------
del "%HOME%\_vimrc"
del "%HOME%\_gvimrc"
rmdir "%HOME%\.vim\rc"



rem --------------------------------------
rem neovim
rem --------------------------------------
rem set nviminitdir=%userprofile%\AppData\Local\nvim
rem set nvimhome=%HOME%\.nvim
rem del "%nviminitdir%\init.vim"
rem del "%nviminitdir%\ginit.vim"
rem del "%nvimhome%\rc\dein.toml"
rem del "%nvimhome%\rc\dein_lazy.toml"


@endlocal
@echo on
