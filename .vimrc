"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/taninaoki/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/taninaoki/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'kakkyz81/evervim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

colorscheme Tomorrow-Night

if &term =~ "xterm-256color" || "screen-256color"
	  set t_Co=256
	    set t_Sf=[3%dm
	      set t_Sb=[4%dm
      elseif &term =~ "xterm-color"
	        set t_Co=8
		  set t_Sf=[3%dm
		    set t_Sb=[4%dm
	    endif

	    syntax on
	    hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

	    let g:neocomplcache_enable_at_startup = 1


	    "neocomplcache keybind
	    "inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
	    "

NeoBundleCheck
"End NeoBundle Scripts-------------------------

" cliipbord共有
set clipboard+=unnamed

" 自動改行防止
autocmd FileType text setlocal textwidth=0

" バックアップ先指定
set backupdir=~/.vim/backup

" スワップファイル指定
set directory=~/.vim/swap

" undofileを一箇所にまとめる
:set undodir=~/.vim/undo

"タブ、空白、改行の可視化
" set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

" evernote token
let g:evervim_devtoken='S=s610:U=70c875a:E=1571d99a8b9:C=14fc5e878d8:P=1cd:A=en-devtoken:V=2:H=d94ce04e819e661a70e41ab5f265c777'
" markdown
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
" esc map
imap <c-j> <esc>


" markdown
au BufRead,BufNewFile *.md set filetype=markdown
let g:vim_markdown_folding_disabled=1
" let g:previm_open_cmd = 'open -a chrome'

