" Language: Jank Lisp
" Maintainer: Jeaye <contact@jeaye.com>

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

set iskeyword+=-

let b:current_syntax = "jank"

syntax keyword jank_todo TODO XXX FIXME NOTE
syntax keyword jank_special
             \ declare
             \ function ƒ
             \ lambda λ
             \ bind
             \ alias
             \ if
syntax keyword jank_builtin_type
             \ boolean integer real string list
             \ auto ∀
syntax region	jank_string start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=jank_todo extend
syntax region jank_comment start="(;" skipnl end=";)" contains=jank_comment,jank_todo
syntax match jank_boolean "\<true\>\|\<false\>"
syntax match jank_integer "\v\-?\d+"
syntax match jank_real "\v\-?\d+\.\d+"

" Some vims don't recognize non-alphanumeric characters for keyword matching,
" and :iskeyword doesn't allow addition of non-ASCII characters
syntax match jank_non_alpha_type "∀"

highlight link jank_todo Todo
highlight link jank_special Keyword
highlight link jank_builtin_type Type
highlight link jank_non_alpha_type Type
highlight link jank_string String
highlight link jank_comment Comment
highlight link jank_boolean Underlined
highlight link jank_integer Number
highlight link jank_real Number

let &cpo = s:cpo_save
unlet s:cpo_save
