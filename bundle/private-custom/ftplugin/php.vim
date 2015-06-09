inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>
"inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
"noremap <Leader>e :call PhpExpandClass()<CR>
"map <F5> <Esc>:EnableFastPHPFolds<Cr>
"map <F6> <Esc>:EnablePHPFolds<Cr>
"map <F7> <Esc>:DisablePHPFolds<Cr> 

let g:phpcomplete_parse_docblock_comments=1


let s:phpgetset_getterTemplate =
  \ "    \n" .
  \ "    /**\n" .
  \ "     * Get %varname%.\n" .
  \ "     *\n" .
  \ "     * @return %varname%.\n" .
  \ "     */\n" .
  \ "    public function %funcname%() { \n" .
  \ "        return $this->%varname%;\n" .
  \ "    }"


" Setter Templates
let s:phpgetset_setterTemplate =
\ "    \n" .
\ "    /**\n" .
\ "     * Set %varname%.\n" .
\ "     *\n" .
\ "     * @param %varname% the value to set.\n" .
\ "     */\n" .
\ "    public function %funcname%($%varname%) { \n" .
\ "        $this->%varname% = $%varname%;\n" .
\ "    }"

map <unique> <buffer> <LocalLeader>o <Plug>PhpgetsetInsertBothGetterSetter
