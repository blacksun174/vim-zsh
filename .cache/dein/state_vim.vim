if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/Genkou/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/Users/Genkou/.vim/after,/Users/Genkou/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/Genkou/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/Genkou/.cache/dein'
let g:dein#_runtime_path = '/Users/Genkou/.cache/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/Genkou/.cache/dein/.cache/.vimrc'
let &runtimepath = '/Users/Genkou/.vim,/usr/share/vim/vimfiles,/Users/Genkou/.cache/dein,/Users/Genkou/.cache/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/Users/Genkou/.cache/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/Genkou/.vim/after,/Users/Genkou/.cache/dein/repos/github.com/Shougo/dein.vim'
filetype off
