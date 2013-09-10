lightline-hybrid
================


Overview
--------
lightline-hybrid brings awesome color scheme [vim-hybrid](https://github.com/w0ng/vim-hybrid) into [lightline.vim](https://github.com/itchyny/lightline.vim).


Setup
-----
Put `lightline-hybrid.vim` into your plugin directory.

Or if you are mad about [NeoBundle](https://github.com/Shougo/neobundle.vim), add the following line to your `.vimrc`:
```vim
NeoBundle 'cocopon/lightline-hybrid.vim'
```

Finally, set color scheme of lightline in `.vimrc`:
```vim
let g:lightline = {}
let g:lightline.colorscheme = 'hybrid'
```


Screenshots
-----------
![default](http://cocopon.me/app/lightline-hybrid/img/default.png)

If you prefer a simple one, how about a plain style?

![plain](http://cocopon.me/app/lightline-hybrid/img/plain.png)

```vim
let g:lightline_hybrid_style = 'plain'
```


License
-------
MIT License.
See LICENSE.txt for more information.
