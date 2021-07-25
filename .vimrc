syntax on
filetype plugin on
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set cursorline
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
Plug 'bling/vim-bufferline'
call plug#end()
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
filetype indent on
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
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
	   if (has("termguicolors"))
	      set termguicolors
	      endif
colorscheme hybrid_material
set background=dark
hi! Normal guibg=NONE ctermbg=NONE
map gt :bn <enter>
  augroup vimtex_config
	      au!
	          au User VimtexEventQuit call vimtex#compiler#clean(0)
		    augroup END
		    
