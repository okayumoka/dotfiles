"--------------------------------------------------------
" 基本設定
"--------------------------------------------------------
set noswapfile      " スワップファイルを作らない
set nobackup        " バックアップファイルを作成しない
set noundofile      " undoファイルを作成しない
set nocompatible    " vi 互換モードをオフ（vim の拡張機能を有効に）
set hidden          " 編集中でも、保存しないで他のファイルを開けるようにする
set confirm         " ファイルを保存していない場合に、ファイルの保存を確認するダイアログを出す
set cmdheight=1     " 画面下部のコマンドラインの高さ
set showcmd         " 入力したコマンドをステータスラインに表示
set scrolloff=5     " カーソルの上または下に表示される最小限の行数。5に設定してあるので、下に5行は必ず表示される
set visualbell      " ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set vb t_vb=        " ビープを鳴らさない
set mouse=a         " 全モードでマウスを有効化
set shellslash      " パス区切りをスラッシュにする
set t_Co=256        " 256色ターミナルでVimを使用する
set backspace=indent,eol,start  " BS でなんでも消せるようにする
"set clipboard+=autoselect       " クリップボードを使用
set ambiwidth=double            " □とか○の文字があってもカーソル位置がずれないようにする
set nowrap          " 折り返さない
set formatoptions=q " 自動改行をオフにする

filetype indent on  " ファイルタイプによるインデントを行う
filetype plugin on  " ファイルタイプによるプラグインを使う
" set notimeout ttimeout ttimeoutlen=200

"--------------------------------------------------------
" インデント
"--------------------------------------------------------
"set autoindent      " オートインデント
set smartindent     " スマートインデント
"set cindent         " C プログラムの自動インデント
set tabstop=4       " タブ幅
set shiftwidth=4    " インデントの幅
set softtabstop=0   " Tab キー押下時に挿入される空白の量
au FileType ruby setlocal ts=2 sw=2
au FileType sql setlocal ts=2 sw=2 softtabstop=2 expandtab
au FileType html setlocal ts=2 sw=2 softtabstop=0
" au FileType xhtml setlocal ts=4 sw=4 softtabstop=0
" au FileType jsp setlocal ts=2 sw=2 softtabstop=0
" au FileType php setlocal ts=4 sw=4 softtabstop=0 expandtab
" au FileType php setlocal ts=4 sw=4 softtabstop=0 autoindent

"--------------------------------------------------------
" 表示
"--------------------------------------------------------
set number      " 行番号を表示
set showmatch   " 括弧の対応をハイライト
"set cursorline  " カーソル行のハイライト
set title       " ウィンドウのタイトルを書き換える
set showmode        "現在のモードを表示

" 特殊文字(SpecialKey)の見える化
set list
set listchars=tab:\|\ \,trail:_,nbsp:%,extends:$,precedes:$,eol:$

"--------------------------------------------------------
" ステータスライン
"--------------------------------------------------------
set laststatus=2    " ステータスラインを常に表示する
set ruler           " ステータスライン上にルーラーを表示する（カーソルが何行目の何列目に置かれているか）

" [ファイルフォーマット][エンコーディング][改行タイプ] 行数, 列数／総列数
set statusline=%F%m%r%h%w\%=[FILETYPE=%Y][ENC=%{&fenc}][%{&ff}]%=%c,\%l/%L


"--------------------------------------------------------
" 補完
"--------------------------------------------------------
set wildmenu        " コマンドラインモードでの補完を有効に
set wildchar=<tab>  " コマンド補完を開始するキー
set history=1000    " コマンド・検索パターンの履歴数
set wildmode=list:longest,full
set completeopt=menu,preview,menuone

" wildmodeのオプション色々
" [none]       最初のマッチのみを補完する。
" full         次のマッチを完全に補完する。最後のマッチの次には元の文字列が使われ、その次は再び最初のマッチが補完される
" longest      共通する最長の文字列までが補完される。それ以上長い文字列を補完できないときは、次の候補に移る
" longest:full longestと似ているが、'wildmenu' " が有効ならばそれを開始する
" list"        複数のマッチがあるときは、全てのマッチを羅列する。
" list:full    複数のマッチがあるときは、全てのマッチを羅列し、最初のマッチを補完する
" list:longest 複数のマッチがあるときは、全てのマッチを羅列し、共通する最長の文字列までが補完される


"--------------------------------------------------------
" タブ
"--------------------------------------------------------
" ファイルを常に新しいタブで開く。
" ただし複数のファイルをドラッグ＆ドロップした場合は挙動がおかしくなる
"autocmd VimEnter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'


"--------------------------------------------------------
" 検索
"--------------------------------------------------------
set wrapscan    " 最後まで検索したら先頭に戻る
set ignorecase  " 大文字小文字を無視する
set smartcase   " 検索文字列に大文字が含まれている場合は区別して検索する
set hlsearch    " 検索語を強調表示
set incsearch   " インクリメンタルサーチを有効化
set grepprg=internal    " 内蔵grepを使う

" Esc の 2 回押しでハイライトを消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" MEMO
" インクリメンタルサーチとは「検索文字列を入力完了する前に、入力中の文字列にマッチしている場所へ移動する」機能


"--------------------------------------------------------
" 移動
"--------------------------------------------------------

" タブ切り替え
nnoremap <C-Tab>   gt
nnoremap <C-S-Tab> gT


"--------------------------------------------------------
" エンコーディング
"--------------------------------------------------------
set ffs=dos,unix,mac   " 改行文字
set encoding=utf-8     " デフォルトエンコーディング
set fileencodings=utf-8,cp932,euc-jp,utf-32,iso-2022-jp


"--------------------------------------------------------
" 折り畳み
"--------------------------------------------------------
"set foldmethod=syntax    "自動で折り畳み
"set foldmethod=marker    "マーカーで折り畳み
"set foldmethod=indent
"set foldmethod=expr
"set foldmethod=manual
"set foldmethod=diff


"--------------------------------------------------------
" プラグイン
"--------------------------------------------------------

" Dein.vim
filetype off
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein/')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
" dein設定開始
"if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	" プラグインリストを収めた TOML ファイル
	" 予め TOML ファイル（後述）を用意しておく
	let g:rc_dir    = expand('~/.vim/rc')
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
	" TOML を読み込み、キャッシュしておく
	call dein#load_toml(s:toml,      {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})
	" 設定終了
	call dein#end()
	" call dein#save_state()
"endif
" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable   "シンタックスハイライト
syntax on

"--------------------------------------------------------
" カラースキーマ
"--------------------------------------------------------
"set background=dark
"autocmd ColorScheme * highlight SpecialKey term=none cterm=none ctermfg=11 ctermbg=8
"colorscheme solarized
"let g:solarized_visibility="low"
"let g:solarized_termtrans=1

colorscheme molokai
highlight specialkey term=none cterm=none


"--------------------------------------------------------
" neocomplete
"--------------------------------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
"let g:neocomplete#keyword_patterns._ = '\h\w*'
"if !exists('g:neocomplete#force_omni_input_patterns')
"  let g:neocomplete#force_omni_input_patterns = {}
"endif
"let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-c>  neocomplete#close_popup()
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "<CR>"
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"--------------------------------------------------------
" Unite
"--------------------------------------------------------



"--------------------------------------------------------
" コメントアウト
"--------------------------------------------------------
nmap <C-k><C-c> <Plug>(caw:i:toggle)
nmap <C-k><C-u> <Plug>(caw:i:toggle)
vmap <C-k><C-c> <Plug>(caw:i:toggle)
vmap <C-k><C-u> <Plug>(caw:i:toggle)


"--------------------------------------------------------
" ファイルを開いたときに自動的にcdする
"--------------------------------------------------------
au BufEnter * execute ":lcd " . expand("%:p:h")



" マッピングに関するmemo
" noreがつくものとつかないものの違い（mapとnoremapとか）
" noreがつかないものを使うと、キーの再割当てが発生する
" -> mapはキーシーケンスを展開した後、さらに別のマップを適用しようとする
" -> noremapは一度だけ展開する
" (例)
" map {A} {X}
" map {B} {A}
" 上のようにマッピングされていた場合、Bを押すとAが実行され、さらにAに割り当てられたXが実行される
" noremapだとマッピングを1度しか展開しない  混乱を避けるためにnore系を利用するのが無難かも
" noremap  : ノーマルモード＋ビジュアルモード
" noremap! : コマンドラインモード＋インサートモード
" nnoremap : ノーマルモード限定
" vnoremap : ビジュアルモード（選択モード）限定
" cnoremap : コマンドラインモード限定
" inoremap : 挿入モード限定
