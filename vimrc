" Following lines added by drush vimrc-install on Sun, 01 Nov 2015 18:13:43 +0000.
set nocompatible
call pathogen#infect('/home/jsobiecki/.drush/vimrc/bundle')
call pathogen#infect('/home/jsobiecki/.vim/bundle')

set rtp+=~/.vim/bundle/vundle

" Vundle package manager
call vundle#begin('~/.vim/Vundle/')

" PHP
" Plugin 'https://github.com/m2mdas/phpcomplete-extended-symfony'
" Plugin 'https://github.com/m2mdas/phpcomplete-extended.git'
Plugin 'https://github.com/arnaud-lb/vim-php-namespace'
Plugin 'https://github.com/stephpy/vim-php-cs-fixer'
Plugin 'https://github.com/docteurklein/vim-symfony'
" Plugin 'https://github.com/mkusher/padawan.vim'
"Plugin 'https://github.com/vim-scripts/phpfolding.vim'
Plugin 'https://github.com/shawncplus/phpcomplete.vim.git'
Plugin 'vim-php/vim-php-refactoring'
Plugin 'vim-php/tagbar-phpctags.vim'

" Drupal
"Plugin 'http://git.drupal.org/project/vimrc.git', {'name': 'drupal-vim', 'rtp': 'bundle/vim-plugin-for-drupal' }

" YaML
Plugin 'https://github.com/stephpy/vim-yaml'

" HTML
Plugin 'https://github.com/othree/html5.vim'
Plugin 'https://github.com/mattn/emmet-vim'

" Latex
Plugin 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'


" Javascript
Plugin 'https://github.com/marijnh/tern_for_vim'
Plugin 'https://github.com/pangloss/vim-javascript'

" Git and friends
Plugin 'https://github.com/airblade/vim-gitgutter'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'tommcdo/vim-fugitive-blame-ext'
Plugin 'gregsexton/gitv'


" Plugin 'https://github.com/vim-scripts/vcscommand.vim'

" QA
Plugin 'https://github.com/joonty/vdebug'
Plugin 'https://github.com/scrooloose/syntastic.git'

" Behat
"Plugin 'Behat/Behat'

" Sass / SCSS
Plugin 'https://github.com/gorodinskiy/vim-coloresque'
Plugin 'https://github.com/groenewege/vim-less'
Plugin 'tpope/vim-haml'

" Markdown
Plugin 'https://github.com/tpope/vim-markdown'

" Code search / navigation
Plugin 'https://github.com/Shougo/unite-outline'
Plugin 'https://github.com/Shougo/unite.vim'
Plugin 'tsukkee/unite-tag'
Plugin 'kien/ctrlp.vim'
" Plugin 'git://github.com/harijari/FuzzyFinder.git'
Plugin 'https://github.com/wincent/Command-T'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/majutsushi/tagbar'

" Twig
Plugin 'https://github.com/evidens/vim-twig.git'
Plugin 'https://github.com/tokutake/twig-indent'

" Json
Plugin 'https://github.com/elzr/vim-json.git'

" Text edit
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'https://github.com/tmhedberg/matchit'
Plugin 'https://github.com/terryma/vim-multiple-cursors'
Plugin 'https://github.com/sickill/vim-pasta'
Plugin 'https://github.com/garbas/vim-snipmate'
" Plugin 'https://github.com/honza/vim-snippets'

" Misc
Plugin 'https://github.com/bling/vim-airline'
Plugin 'https://github.com/embear/vim-localvimrc'
Plugin 'https://github.com/vim-scripts/Wombat.git'
Plugin 'https://github.com/vim-scripts/L9'
Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
" Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'https://github.com/craigemery/vim-autotag'
Plugin 'wakatime/vim-wakatime'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Shougo/vimproc.vim'
Plugin 'easymotion/vim-easymotion'


call vundle#end()
filetype plugin indent on
filetype plugin on

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif
d
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark


set cc=81
syntax on


" Setup unite plugin
"
" Bunch of mappings
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <leader>fo :CtrlPBufTag<CR>
nnoremap <silent> <leader>fb :CtrlPBuffer<CR>
nnoremap <silent> <leader>ft :CtrlPTag<CR>
nnoremap <silent> <leader>fcl :CtrlPChange<CR>
nnoremap <F12> :NERDTreeToggle<CR>
let g:EclimPhpHtmlValidate=0
let g:EclimPhpValidate=0

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< 
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:20,results:20'
set list
set number
set laststatus=2
set et
set sw=4

let g:CommandTMaxFiles=40000
let g:CommandTMaxDepth=25


colorscheme wombat


let g:gitgutter_max_signs=5000
let g:EclimCompletionMethod = 'omnifunc'
let did_padawan_autoload=1
let g:padawan#enabled=0

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11

call unite#filters#matcher_default#use(['matcher_fuzzy'])
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
