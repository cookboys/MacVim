syntax on
set encoding=utf-8 " 文字コードをUTF-8にする
set tabstop=2 " タブ文字の幅
set ruler " vim最下層右側に、カーソルの位置を表示させる
set number         " 行番号を表示する
set laststatus=2   " ステータス行を常に表示
set cmdheight=2    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set confirm "保存されていないファイルがあるときは終了前に保存確認
set hidden "保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread "外部でファイルに変更がされた場合は読みなおす
set noundofile " .un~ファイルを作らない
set nobackup "ファイル保存時にバックアップファイルを作らない
set noswapfile "ファイル編集中にスワップファイルを作らない
set viminfo= " viminfoファイルを作らない
set hlsearch "検索文字列をハイライトする
set incsearch "インクリメンタルサーチを行う
set ignorecase "大文字と小文字を区別しない
set wrapscan "最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault "置換の時 g オプションをデフォルトで有効にする
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する

" deinの設定
" dein.vimインストール時に指定したディレクトリをセット
let s:dein_dir = expand('~/.vim/dein')
" dein.vimの実体があるディレクトリをセット
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir
  call dein#begin(s:dein_dir)
  call dein#add('Shougo/dein.vim')
  " Emmet
  call dein#add('mattn/emmet-vim')
  " vimからgitコマンドを使える
  call dein#add('tpope/vim-fugitive')
  " Javascript Syntax Highlight
  call dein#add('othree/yajs.vim')
  " coffeescript Syntax Highlight
  call dein#add('kchmck/vim-coffee-script')
  " vue Syntax Highlight
  call dein#add('posva/vim-vue')
  " typescript Syntax Highlight
  call dein#add('leafgarland/typescript-vim')
  " JSX Syntax Highlight
  call dein#add('mxw/vim-jsx')
  " Postcss Syntax Highlight
  call dein#add('alexlafroscia/postcss-syntax.vim')
  " Stylus Syntax Highlight
  call dein#add('wavded/vim-stylus')
  " toml Syntax Highlight
  call dein#add('cespare/vim-toml')
  " pug Syntax Highlight
  call dein#add('digitaltoad/vim-pug')
  " EJS Syntax Highlight
  call dein#add('nikvdp/ejs-syntax')
call dein#end()
call dein#save_state()

" 未実装のプラグインがある場合に、インストールをする
if dein#check_install()
  call dein#install()
endif

" 自動的に閉じ括弧を入力
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" タブ移動の設定
nnoremap <C-n> gt
nnoremap <C-p> gT

" MacVimの設定
if has('gui_macvim')
  set transparency=5
  set guifont=Menlo:h12
  set lines=90 columns=200
endif

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype plugin indent on
