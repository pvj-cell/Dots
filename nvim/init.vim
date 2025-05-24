" ======================
" Main
" ======================
set number
set mouse=a
syntax on
set termguicolors
set ambiwidth=single
filetype plugin on

" ======================
" Vim-plug
" ======================
call plug#begin('~/.vim/plugged')

Plug 'goolord/alpha-nvim'
Plug 'nvim-tree/nvim-web-devicons'

call plug#end()

" ======================
" Deep blue gamma
" ======================
highlight AlphaHeader guifg=#274472 ctermfg=25
highlight AlphaButtons guifg=#1e3a5f ctermfg=24
highlight AlphaFooter guifg=#4169e1 ctermfg=33

" ======================
" Alpha start screen
" ======================
lua << EOF
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
  "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
  "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
  "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
  "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
  "                                                ",
  "                Welcome to NeoVim               ",
}

dashboard.section.header.opts.hl = "AlphaHeader"

dashboard.section.buttons.val = {
  dashboard.button("e", "  New File", ":enew<CR>"),
    dashboard.button("f", "󰱼  Search Files", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("c", "  Settings", ":e $MYVIMRC<CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}
dashboard.section.buttons.opts.hl = "AlphaButtons"

dashboard.section.footer.val = "NeoVim - time for brainfuck"
dashboard.section.footer.opts.hl = "AlphaFooter"

alpha.setup(dashboard.config)
EOF
