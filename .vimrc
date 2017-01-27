" 起動時にruntimepathにNeoBundleのパスを追加する
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
 
" NeoBundle設定の開始
call neobundle#begin(expand('~/.vim/bundle'))
 
" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'
 
" インストールしたいプラグインを記述
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'

" NeoBundle設定の終了
call neobundle#end()
 
filetype plugin indent on
 
" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck

""""""プラグインの設定""""""

"mololai
syntax on
colorscheme molokai
set t_Co=256

"モードを見やすくlightline.vim
set laststatus=2

"""""""プラグインの設定　終わり""""""

""""""その他の設定""""""

" 行番号を表示
:set number

" オートインデントする
:set autoindent

" 行頭と行末とで移動できるようにする
:set whichwrap=b,s,h,l,<,>,[,]

" タブ幅を設定する
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4


" 編集中のファイル名を表示する
:set title

" モードを表示する
:set showmode
