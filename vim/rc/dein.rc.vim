"------------------------------------------------------------------------------
" dein config
"------------------------------------------------------------------------------

filetype off
let s:dein_dir = g:vim_home . '/dein'

" dein.vim がなければ github からcloneしてくる
if &runtimepath !~# '/dein.vim'
	let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
" dein設定
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	" tomlファイルに設定してそっちで定義する
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif
" 未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
syntax on
