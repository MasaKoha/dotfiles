set number  " 行番号の表示
set showcmd  "入力中のコマンドを表示
set showmatch " 対応する括弧を強調表示
set ruler
set nocompatible
" vimでファイルを開くときのファイル名保管
set nowildmenu
set wildmode=longest,list,full
" set cursorline
" set cursorline
set laststatus=2
set cmdheight=2
set autoindent    " 改行時に前の行のインデントを継続する
set smartindent   " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set shiftwidth=4    " 自動インデントでずれる幅
set tabstop=4  " 画面上でタブ文字が占める幅
set expandtab  " タブ入力を複数の空白入力に置き換える
set list " 不可視文字を表示
set listchars=tab:>\ ,extends:❯,precedes:❮,trail:_
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る

" set hlsearch   " 検索文字列をハイライトする
set gdefault   " 置換の時 g オプションをデフォルトで有効にする

set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末の左右移動で行をまたぐ
language C

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus

" 行頭のTAB文字を可視化
highlight TabString ctermbg=red guibg=red
au BufWinEnter * let w:m2 = matchadd("TabString", '^\t+')
au WinEnter * let w:m2 = matchadd("TabString", '^\t+')

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')

imap <c-[> <esc>
syntax on
