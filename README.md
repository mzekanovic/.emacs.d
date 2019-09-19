# My .emacs.d setup

### Prerequisites

- Emacs >= 24
- git (if cloning)

##Installation

Download or clone with git and just start emacs.
Everything will be installed automaticaly.

##  Packages

- cl
- move-text
- duplicate-thing
- multiple-cursors
- neotree
- windmove
- smex
- ibuffer
- ido 
- flx
- flx-ido
- nasm-mode
- erlang
- popup
- company
- flycheck
- flycheck-tip
- go-mode
- exec-path-from-shell
- auto-complete
- cider
- projectile

## Custom shortcuts

_location_ - lisp/my-keybindings.el

| shortcuts   | function                   |         comment		|
|:-----------:|:--------------------------:|:--------------------------:|
| C-S-down    | move-text-down             | move line down             |
| C-S-up      | move-text-up               | move line up               |
| C-C d       | duplicate-thing            | duplicate                  |
| C->         | mc/mark-next-like-this     | mark next selection        |
| C-<         | mc/mark-previous-like-this | mark previous selection    |
| C-c C-<     | mc/mark-all-like-this      | mark all selection         |
| C-S-c C-S-c | mc/edit-lines              | edit selected lines        |
| C-M-return  | neotree-toggle             | toggle neotgreee           |
| C-c left    | windmove-left              | move to buffer left        |
| C-c right   | windmove-right             | move to buffer down        |
| C-c down    | windmove-down              | move to buffer down	|
| M-x         | smex                       | Enhanced M-x		|
| C-c up      | windmove-up                | move to buffer up       	|
| M-S-x       | smex-major-mode-commands   |				|
| C-c C-c M-x | execute-extended-command   | Old M-x			|
| C-x C-b     | ibuffer                    | Ibuffer open		|
| C-tab       | tabbar-backward-tab        | Next file buffer          	|
| C-S-tab     | tabbar-forward-tab         | Previous buffer           	|
| C-c p       | projectile-command-map     | Projectile command prefix 	|
|:-----------:|:--------------------------:|:--------------------------:|


## Development

For custom things, use lisp/ folder
