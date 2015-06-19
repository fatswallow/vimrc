set nocompatible
set nobackup
set nu
set hls
syntax on
filetype on
filetype plugin indent on

""""""""""""""""""""""""""""""""
" display
""""""""""""""""""""""""""""""""
colorscheme desert
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%y-%m-%d\ %H:%M\")}
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
set cursorline      " 突出显示当前行
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

set ts=4
set sw=4
set ai

"""""""""""""""""""""""""""""
" WinManager
"""""""""""""""""""""""""""""
"let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout="NERDTree"
"let g:winManagerAutoOpen=1
let g:winManagerOnRightSide=1
let g:winManagerWidth=40
let g:NERDTree_title="[NERDTree]"
function! NERDTree_Start()
	exec 'NERDTree'
endfunction
function! NERDTree_IsValid()
	return 1
endfunction
nmap mm :WMToggle<CR>


""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Open=1            " 默认打开Taglist
let Tlist_Show_One_File = 1      " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1    " 如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1   " 在右侧窗口中显示taglist窗口
"let Tlist_File_Fold_Auto_Close=1 " 自动折叠当前非编辑文件的方法列表
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1

"miniBufExpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

"Gtags
nnoremap <leader>gg :execute 'Unite gtags/def:'.expand('<cword>')<CR>
nnoremap <leader>gc :execute 'Unite gtags/context'<CR>
nnoremap <leader>gr :execute 'Unite gtags/ref'<CR>
nnoremap <leader>ge :execute 'Unite gtags/grep'<CR>
vnoremap <leader>gg <ESC>:execute 'Unite gtags/def:'.GetVisualSelection()<CR>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

nnoremap <C-/> :GtagsCursor<CR>
set csprg=gtags-cscope
"cscope add /foo/bar/GTAGS

