" Author:  cocopon <cocopon@me.com>
" License: MIT License


" Color palette from vim-hybrid
let s:mono0 = '#1d1f21'
let s:mono1 = '#282a2e'
let s:mono2 = '#373b41'
let s:mono3 = '#707880'
let s:mono4 = '#c5c8c6'

let s:red   = '#cc6666'
let s:green = '#b5bd68'
let s:blue  = '#81a2be'


let s:p = {
      \ 'normal':   {},
      \ 'inactive': {},
      \ 'insert':   {},
      \ 'replace':  {},
      \ 'visual':   {}}

let s:p.normal.middle = [
      \ {'bg': s:mono1, 'fg': s:mono3}]
let s:p.normal.left = [
      \ {'bg': s:mono3, 'fg': s:mono0},
      \ {'bg': s:mono2, 'fg': s:mono4}]
let s:p.normal.right = [
      \ {'bg': s:mono3, 'fg': s:mono0},
      \ {'bg': s:mono3, 'fg': s:mono0}]

let s:p.inactive.middle = [
      \ {'bg': s:mono1, 'fg': s:mono3}]
let s:p.inactive.right = [
      \ s:p.inactive.middle[0],
      \ s:p.inactive.middle[0]]
let s:p.inactive.left = [
      \ s:p.inactive.middle[0],
      \ s:p.inactive.middle[0]]

let s:p.insert.left = [
      \ {'bg': s:blue, 'fg': s:mono0},
      \ s:p.normal.left[1]]
let s:p.replace.left = [
      \ {'bg': s:red, 'fg': s:mono0},
      \ s:p.normal.left[1]]
let s:p.visual.left = [
      \ {'bg': s:green, 'fg': s:mono0},
      \ s:p.normal.left[1]]


function! s:build_palette(p)
  let p = copy(a:p)

  for mode in values(p)
    for colors in values(mode)
      for i in range(len(colors))
        let colors[i] = [
              \ colors[i].fg,
              \ colors[i].bg]
      endfor
    endfor
  endfor

  return lightline#colorscheme#fill(p)
endfunction


let g:lightline#colorscheme#hybrid#palette = s:build_palette(s:p)
