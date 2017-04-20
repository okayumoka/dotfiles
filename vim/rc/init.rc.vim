"------------------------------------------------------------------------------
" 基本設定
"------------------------------------------------------------------------------

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

