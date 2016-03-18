"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
  
" ここから追加プラグイン
"NerdTree
NeoBundle 'scrooloose/nerdtree'
"autoclose
NeoBundle 'Townk/vim-autoclose'
"lightline
NeoBundle 'itchyny/lightline.vim'
"Unite.vim
NeoBundle 'Shougo/unite.vim'
"neomru
NeoBundle 'shougo/neomaru.vim'
"vim-fugitive
NeoBundle 'tpope/vim-fugitive'
"color scheme
NeoBundle 'tomasr/Molokai'



call neobundle#end()
   
" Required:
filetype plugin indent on
     
" 未インストールのプラグインがある場合通知
" 毎回聞かれると邪魔な場合はコメントアウト
NeoBundleCheck
      
"-------------------------
" End Neobundle Settings.
"-------------------------

"COMMON SETTING
set nocompatible	"compatibility with vi OFF
"DISPLAY setting
set title			"編集中のファイル名を表示
set number			"行数を表示
set laststatus=2	"画面下部のステータス行を常に表示
set cmdheight=2		"画面下部のステータス行舌にメッセージ欄を2行表示
set showmatch		"カーソル位置に()があった場合対応する()を強調する

syntax on			"
"TAB INDENT SETTING
set expandtab   	"tab入力を複数のスペースに置き換える
set tabstop=4		"tabでずれる幅=4
set shiftwidth=4	"自動インデントでずれる幅=4
set softtabstop=4	"連続した空白に対してtabやBSでカーソルが動く幅
set autoindent		"開業時に前の行のインデントを継続
set smartindent		"開業時に入力された行の末尾合わせて次の行のインデントを増減
"SEARCH SETTING
set hlsearch    	"検索文字列のハイライト
set incsearch   	"エンターキーで確定する前から文字が入力されるたびに検索を行う
set ignorecase		"検索で大文字小文字を区別しない
set smartcase		"検索で大文字小文字が混在する際に区別して検索
set wrapscan		"最後尾の検索候補にたどり着いたら先頭に戻る
"SCROLL SETTING
set backspace=indent,eol,start		"バックスペースの影響範囲設定
set scrolloff=8			"ウィンドウ上下端のカーソル移動時カーソル先の視界確保
set sidescrolloff=16	"画面左右でカーソル先の視界確保
set sidescroll=1		"画面左右端で1文字ずつスクロールする
set whichwrap=b,s,h,l,<,>,[,]		"行頭・行末で左右移動時に行をまたぐ設定
"FILE SETTING
set hidden  		"保存されてないファイルがあるときは終了前に保存確認をする
set confirm 		"保存されたないファイルがあるときでも別のファイルを開くことができる
set autoread 		"外部でファイルが変更された場合は読みなおす
set nobackup  		"ファイル保存時、バックアップファイルを作らない
set noswapfile  	"ファイル編集中にスワップファイルを作らない
"OS SETTING
set mouse=a			"マウス入力を受け付ける
set clipboard=unnamed,unnamedplus   "クリップボード
"COMMAND LINNE SETTING
set wildmenu 						"Tabキーによるファイル名補完を有効
set wildmode=list:longest,full		"Tabキーによるファイル名補完の挙動設定
