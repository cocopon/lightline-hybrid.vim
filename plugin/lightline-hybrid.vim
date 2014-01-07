" Author:  cocopon <cocopon@me.com>
" License: MIT License


" Color palette from vim-hybrid
let s:mono0 = '#1d1f21'
let s:mono1 = '#282a2e'
let s:mono2 = '#303030'
let s:mono3 = '#373b41'
let s:mono4 = '#707880'
let s:mono5 = '#c5c8c6'

let s:red    = '#cc6666'
let s:green  = '#b5bd68'
let s:blue   = '#81a2be'
let s:orange = '#de935f'


let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:lightline_hybrid_style')
			\ ? g:lightline_hybrid_style
			\ : ''

" [[fg, bg], [fg, bg], ...]
if s:style == 'plain'
	let s:p.normal.middle = [[s:mono3, s:mono4]]
	let s:p.normal.left = [
				\ [s:mono0, s:mono4],
				\ [s:mono0, s:mono4]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4],
				\ [s:mono0, s:mono4]]
else
	let s:p.normal.middle = [
				\ [s:mono4, s:mono1]]
	let s:p.normal.left = [
				\ [s:mono0, s:green],
				\ [s:mono5, s:mono3]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4],
				\ [s:mono0, s:mono4]]
endif

let s:p.inactive.middle = [
			\ [s:mono4, s:mono2]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:mono0, s:blue],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:mono0, s:red],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:mono0, s:orange],
			\ s:p.normal.left[1]]

if s:style == 'plain'
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono5]]
	let s:p.tabline.right = [
				\ [s:mono0, s:mono5]]
	let s:p.tabline.left = [
				\ [s:mono0, s:mono5]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0]]
else
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono4]]
	let s:p.tabline.right = [
				\ [s:mono4, s:mono1],
				\ [s:mono0, s:mono4]]
	let s:p.tabline.left = [
				\ [s:mono4, s:mono1]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0]]
endif


let g:lightline#colorscheme#hybrid#palette =
			\ lightline#colorscheme#fill(s:p)
