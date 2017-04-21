"------------------------------------------------------------------------------
" 編集機能周りの設定
"------------------------------------------------------------------------------

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
" エンコーディング
"--------------------------------------------------------
set encoding=utf-8     " デフォルトエンコーディング
set fileencodings=utf-8,cp932,euc-jp,utf-32,iso-2022-jp
set fileformats=dos,unix,mac   " 改行文字



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
" ファイルを開いたときに自動的にcdする
"--------------------------------------------------------
au BufEnter * execute ":lcd " . expand("%:p:h")

