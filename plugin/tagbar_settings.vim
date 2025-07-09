if exists("g:load_tagbar_settings")
    finish
endif

let g:loaded_tagbar_settings = 1

" Diff
" let g:tagbar_type_diff = {
"             \ 'ctagstype': 'diff',
"             \ 'sro': "/",
"             \ 'kinds': [
"             \   'm:modified',
"             \   'n:new',
"             \   'd:deleted',
"             \   'h:hunks:1',
"             \ ],
"             \ 'kind2scope': {
"             \   'n': 'newFile',
"             \   'm': 'modifiedFile',
"             \   'd': 'deletedFile',
"             \ },
"             \ 'scope2kind': {
"             \   'newFile':      'n',
"             \   'modifiedFile': 'm',
"             \   'deletedFile':  'd',
"             \ },
"             \ }

let g:tagbar_type_diff = {
            \ 'ctagstype': 'commitdiff',
            \ 'sro': "/",
            \ 'kinds': [
            \   'c:commit',
            \   'a:author',
            \   'C:comitter',
            \   't:timestamp',
            \   'p:path',
            \   's:path:1',
            \   'h:hunk:1',
            \ ],
            \ 'kind2scope': {
            \   's': 'changeset',
            \   'p': 'path',
            \ },
            \ 'scope2kind': {
            \   'changeset': 's',
            \   'path':      'p',
            \ },
            \ 'deffile': expand('<sfile>:p:h:h') . '/ctags/commitdiff.ctags',
            \ }

" Crystal
let g:tagbar_type_crystal = {
            \ 'ctagstype': 'crystal',
            \ 'kinds': [
            \   'd:defs',
            \   'f:functions',
            \   'c:classes',
            \   'm:modules',
            \   'l:libs',
            \   's:structs',
            \   'e:enums',
            \ ],
            \ }

" Cucumber
let g:tagbar_type_cucumber = {
            \ 'ctagstype': 'cucumber',
            \ 'kinds': [
            \   'b:background',
            \   'r:rule',
            \   's:scenario',
            \   'o:scenariooutline',
            \ ],
            \ 'sort': 0,
            \ }

" Elixir
let g:tagbar_type_elixir = {
            \ 'ctagstype': 'elixir',
            \ 'kinds': [
            \   'p:protocols',
            \   'm:modules',
            \   'e:exceptions',
            \   'y:types',
            \   'd:delegates',
            \   'f:functions',
            \   'c:callbacks',
            \   'a:macros',
            \   't:tests',
            \   'i:implementations',
            \   'o:operators',
            \   'r:records',
            \ ],
            \ 'sro': '.',
            \ 'kind2scope': {
            \   'p': 'protocol',
            \   'm': 'module',
            \ },
            \ 'scope2kind': {
            \   'protocol': 'p',
            \   'module':   'm',
            \ },
            \ 'sort': 0,
            \ }

" Go
if executable('gotags')
    let g:tagbar_type_go = {
                \ 'ctagstype': 'go',
                \ 'kinds': [
                \   'p:package',
                \   'i:imports:1',
                \   'c:constants',
                \   'v:variables',
                \   't:types',
                \   'n:interfaces',
                \   'w:fields',
                \   'e:embedded',
                \   'm:methods',
                \   'r:constructor',
                \   'f:functions',
                \ ],
                \ 'sro': '.',
                \ 'kind2scope': {
                \   't': 'ctype',
                \   'n': 'ntype',
                \ },
                \ 'scope2kind': {
                \   'ctype': 't',
                \   'ntype': 'n',
                \ },
                \ 'ctagsbin':  'gotags',
                \ 'ctagsargs': '-sort -silent',
                \ }
endif

" Groovy
let g:tagbar_type_groovy = {
            \ 'ctagstype': 'Groovy',
            \ 'kinds': [
            \   'p:package',
            \   'c:classes',
            \   'i:interfaces',
            \   't:traits',
            \   'e:enums',
            \   'r:constructors',
            \   'm:methods',
            \   'f:fields:1',
            \ ],
            \ }

" Groovy
" let g:tagbar_type_groovy.deffile = expand('<sfile>:p:h:h') . '/ctags/groovy.ctags'

" JSON
let g:tagbar_type_json = {
            \ 'ctagstype': 'json',
            \ 'kinds': [
            \   'o:objects',
            \   'a:arrays',
            \   'n:numbers',
            \   's:strings',
            \   'b:booleans',
            \   'z:nulls',
            \ ],
            \ 'sro': '.',
            \ 'scope2kind': {
            \   'object':  'o',
            \   'array':   'a',
            \   'number':  'n',
            \   'string':  's',
            \   'boolean': 'b',
            \   'null':    'z',
            \ },
            \ 'kind2scope': {
            \   'o': 'object',
            \   'a': 'array',
            \   'n': 'number',
            \   's': 'string',
            \   'b': 'boolean',
            \   'z': 'null',
            \ },
            \ 'sort': 0,
            \ }

" Ruby
let g:tagbar_type_ruby = {
            \ 'kinds': [
            \   'm:modules',
            \   'c:classes',
            \   'd:describes',
            \   'C:contexts',
            \   'f:methods',
            \   'F:singleton methods'
            \ ],
            \ }

if executable('ripper-tags')
    let g:tagbar_type_ruby = {
                \ 'kinds': [
                \   'm:modules',
                \   'c:classes',
                \   'C:constants',
                \   'F:singleton methods',
                \   'f:methods',
                \   'a:aliases',
                \ ],
                \ 'kind2scope': {
                \   'c': 'class',
                \   'm': 'class',
                \ },
                \ 'scope2kind': {
                \   'class': 'c'
                \ },
                \ 'ctagsbin': 'ripper-tags',
                \ 'ctagsargs': ['-f', '-'],
                \ }
endif

" Rust
let g:rust_use_custom_ctags_defs = 1 " if using rust.vim
let g:tagbar_type_rust = {
            \ 'ctagstype': 'rust',
            \ 'kinds': [
            \   'n:modules',
            \   's:structures:1',
            \   'i:interfaces',
            \   'c:implementations',
            \   'f:functions:1',
            \   'g:enumerations:1',
            \   't:type aliases:1:0',
            \   'C:constants:1:0',
            \   'M:macros:1',
            \   'm:fields:1:0',
            \   'e:enum variants:1:0',
            \   'P:methods:1',
            \ ],
            \ 'sro': '::',
            \ 'kind2scope': {
            \   'n': 'module',
            \   's': 'struct',
            \   'i': 'interface',
            \   'c': 'implementation',
            \   'f': 'function',
            \   'g': 'enum',
            \   't': 'typedef',
            \   'v': 'variable',
            \   'M': 'macro',
            \   'm': 'field',
            \   'e': 'enumerator',
            \   'P': 'method',
            \ },
            \ }

" Vim9
let g:tagbar_type_vim = {
            \ 'ctagstype': 'vim',
            \ 'sro': '.',
            \ 'kinds': [
            \   'i:imports',
            \   'T:types',
            \   'E:enums:1',
            \   'e:enumerator',
            \   'V:fields',
            \   'I:interfaces',
            \   'L:classes',
            \   'n:vimball filenames',
            \   'D:functions',
            \   'M:methods',
            \   'g:global variables',
            \   'K:constants',
            \   'a:autocommand groups:1',
            \   'c:commands:0:0',
            \   'm:maps:1:0',
            \ ],
            \ 'kind2scope': {
            \   'L': 'class',
            \   'E': 'enum',
            \   'I': 'interface',
            \ },
            \ 'scope2kind': {
            \   'class': 'L',
            \   'enum': 'E',
            \   'interface': 'I',
            \ },
            \ }

" Vlang
let g:tagbar_type_vlang = {
            \ 'kinds': [
            \   'm:imodule',
            \   'M:module',
            \   'C:cfunction',
            \   'f:function',
            \   'h:method',
            \   'c:const',
            \   'v:variable',
            \   's:struct',
            \   'e:enum',
            \   'i:interface',
            \   'S:sfield',
            \   'E:efield',
            \ ],
            \ }

" YAML
let g:tagbar_type_yaml = {
            \ 'ctagstype': 'yaml',
            \ 'kinds': [
            \   'a:anchors',
            \   's:section',
            \   'e:entry',
            \ ],
            \ 'sro': '.',
            \ 'scope2kind': {
            \   'section': 's',
            \   'entry':   'e',
            \ },
            \ 'kind2scope': {
            \   's': 'section',
            \   'e': 'entry',
            \ },
            \ 'sort': 0,
            \ }

" Zig
let g:tagbar_type_zig = {
            \ 'ctagstype': 'zig',
            \ 'kinds': [
            \   'f:functions',
            \   's:structs',
            \   'e:enums',
            \   'u:unions',
            \   'E:errors',
            \ ],
            \ }
