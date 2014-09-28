"--------------------------------------------------------
" 基本設定
"--------------------------------------------------------
set noswapfile      " スワップファイルを作らない
set nocompatible    " vi 互換モードをオフ（vim の拡張機能を有効に）
"set hidden         " 編集中でも、保存しないで他のファイルを開けるようにする
set confirm         " ファイルを保存していない場合に、ファイルの保存を確認するダイアログを出す
set cmdheight=1     " 画面下部のコマンドラインの高さ
set showcmd         " 入力したコマンドをステータスラインに表示
set scrolloff=5     " カーソルの上または下に表示される最小限の行数。5に設定してあるので、下に5行は必ず表示される
set visualbell      " ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set vb t_vb=        " ビープを鳴らさない
set mouse=a         " 全モードでマウスを有効化
set viminfo+=!      " yankring用に!を追加
set shellslash      " パス区切りをスラッシュにする
set t_Co=256        " 256色ターミナルでVimを使用する
set backspace=indent,eol,start  " BS でなんでも消せるようにする
set formatoptions+=mM           " 整形オプションにマルチバイト系を追加
set clipboard+=autoselect       " クリップボードを使用
set ambiwidth=double            " □とか○の文字があってもカーソル位置がずれないようにする
set backspace=indent,eol,start  "BSでなんでも消せるようにする
set formatoptions+=mM           "整形オプションにマルチバイト系を追加
set nowrap          " 折り返さない
"set showtabline=2   " タブのラベルを常に表示する

filetype indent on  " ファイルタイプによるインデントを行う
filetype plugin on  " ファイルタイプによるプラグインを使う
" キーコードはすぐにタイムアウト  マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200


"--------------------------------------------------------
" ステータスライン
"--------------------------------------------------------
set laststatus=2    " ステータスラインを常に表示する
set ruler           " ステータスライン上にルーラーを表示する（カーソルが何行目の何列目に置かれているか）

" [ファイルフォーマット][エンコーディング][改行タイプ] 行数, 列数／総列数
set statusline=%F%m%r%h%w\%=[FILETYPE=%Y][ENC=%{&fenc}][%{&ff}]%=%c,\%l/%L

" MEMO
" powerlineというプラグインを入れるとステータスラインを強化できるようだ


"--------------------------------------------------------
" インデント
"--------------------------------------------------------
set autoindent      " オートインデント
set smartindent     " スマートインデント
set cindent         " C プログラムの自動インデン
"set expandtab      " Tab文字を空白に展開

" オートインデント、改行、インサートモード開始直後にバックスペースキーで削除できるようにする
set backspace=indent,eol,start

" softtabstopはTabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set tabstop=4       " タブ幅
set shiftwidth=4    " インデントの幅
set softtabstop=0   " Tab キー押下時に挿入される空白の量
" Rubyスクリプトではインデントをスペース2個にする
au FileType ruby setlocal ts=2 sw=2

"filetype plugin on " ファイルタイプの検索を有効にする
"filetype indent on " ファイルタイプに合わせたインデントを利用する

" MEMO
" autoindent  : 改行時に半角スペース8文字を挿入する
" smartindent : 新しい行をつくったときに高度な自動インデントを行う  cindentがONだと無効化される
" tabstop     : タブ文字の幅を設定する  デフォルトは8
" expandtab   : TABキー入力時に、タブ文字の代わりにスペースにする
" softtabstop : タブ文字を入力した際にタブ文字の代わりに挿入されるホワイトスペースの量を設定する  shiftwidthと同じ値にすると良い
" shiftwidth  : 「>>」等のコマンドや自動インデントの際に使う1レベル分のインデント量を設定する  tabstopと同じ値にすると良い


"--------------------------------------------------------
" 表示
"--------------------------------------------------------
set number      " 行番号を表示
set showmatch   " 括弧の対応をハイライト
set cursorline  " カーソル行のハイライト
"set ruler        "ルーラー表示(ステータスライン変えてるから意味ない)
set title        "ウィンドウのタイトルを書き換える
"set wrap           "長い行を折り返す
"set numberwidth=6  "行番号の幅
set showmode        "現在のモードを表示
set guioptions-=T   " ツールバーを削除

" 特殊文字(SpecialKey)の見える化
set list
set listchars=tab:.\ \,trail:_,nbsp:%,extends:$,precedes:$,eol:$
"highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray

" 全角スペースのハイライト表示
"function! ZenkakuSpace()
"    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
"endfunction
"if has('syntax')
"    augroup ZenkakuSpace
"        autocmd!
"        autocmd ColorScheme       * call ZenkakuSpace()
"        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
"    augroup END
"    call ZenkakuSpace()
"endif

" 入力モード時、ステータスラインのカラーを変更
"augroup InsertHook
" autocmd!
" autocmd InsertEnter * highlight StatusLine ctermfg=black ctermbg=white guifg=#2E4340 guibg=#ccdc90
" autocmd InsertLeave * highlight StatusLine ctermfg=black ctermbg=lightgray guifg=black guibg=#c2bfa5
"augroup END

" MEMO
" 不可視文字とはタブ文字や行末文字のことを指す


"--------------------------------------------------------
" 補完
"--------------------------------------------------------
set wildmenu        " コマンドラインモードでの補完を有効に
set wildchar=<tab>    " コマンド補完を開始するキー
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
"ウィンドウ移動
"noremap <S-Up> <C-W>k
"noremap <S-Down> <C-W>j
"noremap <S-Left> <C-W>h
"noremap <S-Right> <C-W>l

" インサートモードでもhjklで移動（Ctrlを押しながら）
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"カーソルを表示行で移動する。物理行移動は<C-n>,<C-p>
"nnoremap j gj
"nnoremap k gk
"nnoremap <Down> gj
"nnoremap <Up>   gk

" インサートモードでも削除
"inoremap <C-x> <BS>

"set whichwrap=b,s,h,l,<,>,[,] "カーソルを行頭、行末で止まらないようにする

"Ctrl+上下で5行ずつ移動
"map <C-Up> <Up><Up><Up><Up><Up>
"imap <C-Up> <Up><Up><Up><Up><Up>
"map <C-Down> <Down><Down><Down><Down><Down>
"imap <C-Down> <Down><Down><Down><Down><Down>

"フレームサイズをテンキーの+-で変更する
"map <kPlus> <C-W>+
"map <kMinus> <C-W>-

"タブ切り替え
"nnoremap <C-Tab>   gt
"nnoremap <C-S-Tab> gT


"--------------------------------------------------------
" エンコーディング
"--------------------------------------------------------
set ffs=unix,dos,mac   " 改行文字
set encoding=utf-8     " デフォルトエンコーディング
set fileencodings=iso-2022-jp,cp932,euc-jp,utf-8,utf-32

"--------------------------------------------------------
" 折り畳み
"--------------------------------------------------------
"set foldmethod=syntax           "自動で折り畳み
"set foldmethod=marker  "マーカーで折り畳み
"set foldmethod=indent
"set foldmethod=expr
"set foldmethod=manual
"set foldmethod=diff


"--------------------------------------------------------
" プラグイン
"--------------------------------------------------------

" NeoBundle
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'    " プラグイン管理
NeoBundle 'Shougo/vimproc'          " 非同期処理のため
NeoBundle 'VimClojure'              " vimにおけるクロージャの開発環境
NeoBundle 'Shougo/vimshell'         " vimからシェルを起動する
NeoBundle 'Shougo/unite.vim'        " vim上で使用出来る統合ユーザーインターフェース
NeoBundle 'Shougo/neocomplcache'    " 補完
NeoBundle 'Shougo/neosnippet'       " スニペット
NeoBundle 'jpalardy/vim-slime'      " ??
NeoBundle 'Townk/vim-autoclose'     " カッコやダブルコーテーションを自動で閉じる
NeoBundle 'kien/ctrlp.vim.git'      " コマンドラインでのファイル補完
"NeoBundle 'scrooloose/syntastic'   " シンタックスのチェック（重たくなるようなのでとりあえず解除）
NeoBundle 'xolox/vim-lua-ftplugin.git'
NeoBundle 'xolox/vim-misc.git'
NeoBundle "scrooloose/nerdtree"
" カラースキーマ系
NeoBundle 'altercation/vim-colors-solarized'    " solarized カラーテーマ
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'

syntax enable   "シンタックスハイライト
syntax on       "シンタックスハイライト
set background=dark
colorscheme solarized

""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

"--------------------------------------------------------
" neocomplete
"--------------------------------------------------------
filetype plugin indent on     " required!
filetype indent on
syntax on
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'


"--------------------------------------------------------
" ショートカット
"--------------------------------------------------------
cnoremap nt NERDTree
cnoremap vs VimShell

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



