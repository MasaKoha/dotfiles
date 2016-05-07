set number  " 行番号の表示
set showcmd  "入力中のコマンドを表示
set showmatch " 対応する括弧を強調表示
set ruler

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

set nocompatible

" Vim起動完了時にインストール
" http://yuheikagaya.hatenablog.jp/entry/2016/03/20/171907 から引用
augroup PluginInstall
  autocmd!
  autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END

" 各プラグインをインストールするディレクトリ
let s:plugin_dir = expand('~/.vim/dein/')
" dein.vimをインストールするディレクトリをランタイムパスへ追加
let s:dein_dir = s:plugin_dir . 'repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . s:dein_dir

" dein.vimがまだ入ってなければ 最初に`git clone`
if !isdirectory(s:dein_dir)
  call mkdir(s:dein_dir, 'p')
  silent execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_dir)
endif

if dein#load_state(s:plugin_dir)
  call dein#begin(s:plugin_dir)

  " ここからインストールするプラグインを書いていく
  call dein#add('Shougo/dein.vim')
  call dein#add('fatih/vim-go')

  " インストール後ビルドする場合
  call dein#add('Shougo/vimproc.vim', {
        \ 'build': {
        \     'mac': 'make -f make_mac.mak',
        \     'linux': 'make',
        \     'unix': 'gmake',
        \    },
        \ })

  " 条件によって使ったり使わなかったり制御する場合
  call dein#add('Shougo/neocomplete.vim', {
        \ 'if' : has('lua')
        \ })

  " 依存関係がある場合
  call dein#add('Shougo/unite.vim')
  call dein#add('ujihisa/unite-colorscheme', {'depends' : 'Shougo/unite.vim'})

  " 手動でcall dein#source('プラグイン名')して使い始める場合
  call dein#add('Shougo/vimfiler', {'lazy' : 1})

  " 指定のファイルタイプ使う場合
  call dein#add('tpope/vim-rails', {'on_ft' : 'ruby'})

  " dein.vimで管理して更新だけするリポジトリ（NeoBundleFetchとおなじ）
  call dein#add('jszakmeister/markdown2ctags', {'rtp': ''})

  " サブディレクトリを指定してdein#add()する場合
  " frozenオプションは自動で更新しない
  " 自分で開発するプラグインの管理に便利
  call dein#local('~/src/github.com/violetyk',
        \ {
        \   'frozen' : 1,
        \   'depends' : [
        \     'kana/vim-gf-user',
        \     'Shougo/neosnippet.vim',
        \     'vim-jp/vital.vim'
        \   ]
        \ },
        \ [
        \   '*.vim',
        \   'neosnippet-*',
        \   'neocomplete-*',
        \   'scratch-utility'
        \ ])
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
"" 引用ここまで

syntax on
