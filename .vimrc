set ruler       " Affiche la position du curseur
set number      " Affiche les numéros de ligne
set smartindent " Indentation intelligente
set autoindent  " Conserve l'indentation sur une nouvelle ligne

set nocompatible        " Désactive la compatibilité Vi


" Ferme la parenthèse et place le curseur entre les deux
inoremap ( ()<left>

"##### THEME #####
syntax on	" Coloration syntaxique
colorscheme Tomorrow-Night
set background=dark

"##### FORMATER #####

" Format JSON data use: ctrl+F6
map <C-F6> :%!python -m json.tool<CR>

" Format XML data use: ctrl+F7
" https://stackoverflow.com/questions/21408222/vim-indent-xml-file
" The tabulatiin ^I is a single character you generate via: CTRL+v,CTRL+i
map <C-F7> :%!XMLLINT_INDENT="	" xmllint --format -<CR>
