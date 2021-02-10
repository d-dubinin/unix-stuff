syntax on
filetype plugin on
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-x> :!./%:r.out
call plug#begin('~/.vim/plugged')
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dylanaraps/wal'
Plug   'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
call plug#end()

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:livepreview_previewer = 'zathura'
filetype indent on
:set number
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
colorscheme wal
hi! clear Conceal
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
set conceallevel=2
let g:tex_conceal="abdmg"
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
nmap <up> gk
nmap <down> gj
