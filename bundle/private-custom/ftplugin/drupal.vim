let g:syntastic_phpcs_conf="--standard=Drupal"
let g:syntastic_php_phpcs_args="--standard=Drupal"


set sw=2
set et

let b:phpgetset_getterTemplate =
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
let b:phpgetset_setterTemplate =
\ "    \n" .
\ "    /**\n" .
\ "     * Set %varname%.\n" .
\ "     *\n" .
\ "     * @param %varname% the value to set.\n" .
\ "     */\n" .
\ "    public function %funcname%($%varname%) { \n" .
\ "        $this->%varname% = $%varname%;\n" .
\ "    }"

map <unique> <buffer> <LocalLeader>z <Plug>PhpgetsetInsertBothGetterSetter
