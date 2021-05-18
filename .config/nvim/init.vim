syntax on
syntax enable
set guifont=Iosevka\ Nerd\ Font:h18
set termguicolors
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
let $NVIM_ENABLE_CURSOR_SHAPE=1
set encoding=utf-8
"set cursorline
filetype plugin on
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-x> :!./%:r.out
call plug#begin('~/.vim/plugged')
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug   'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'dylanaraps/wal.vim'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
filetype indent on
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
hi! clear Conceal
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
set conceallevel=2
let g:tex_conceal="abdmg"
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
nmap <up> gk
nmap <down> gj
set number 
let g:vimtex_quickfix_enabled = 1
let g:vimtex_quickfix_mode=0
let mapleader = "_"
let maplocalleader = ","
if (has("nvim"))
		    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
		    	    endif
			    	    if (has("termguicolors"))
					    	      set termguicolors
						      	      endif
							      set background=dark
							      colorscheme hybrid_material

