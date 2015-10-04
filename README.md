# My .emacs.d setup

### Prerequisites

- Emacs >= 24
- git (if cloning)

##Installation

Download or clone with git and just start emacs.
Everything will be installed automaticaly.

##  Packages

- use-package
- neotree
- flx
- flx-ido
- move-text
- smex


## Custom shortcuts

_location_ - lisp/my-keybindings.el

| shortcuts   | function                   |         comment         |
|:-----------:|:--------------------------:|:-----------------------:|
| C-S-down    | move-text-down             | move line down          |
| <C-S-up>    | move-text-up               | move line up            |
| C-C d       | duplicate-thing            | duplicate               |
| C->         | mc/mark-next-like-this     | mark next selection     |
| C-<         | mc/mark-previous-like-this | mark previous selection |
| C-c C-<     | mc/mark-all-like-this      | mark all selection      |
| C-M-return  | neotree-toggle             | toggle neotgreee        |
| C-c C-left  | windmove-left              | move to buffer left     |
| C-c C-right | windmove-right             | move to buffer down     |
| C-c C-up    | windmove-up                | move to buffer up       |
| C-c C-down  | windmove-down              | move to buffer down     |
| M-x         | smex                       | Enhanced M-x            |
| M-X         | smex-major-mode-commands   |                         |
| C-c C-c M-x | execute-extended-command   | Old M-x                 |
| C-x C-b     | ibuffer                    |  Ibuffer open           |
| C-tab       | my-next-buffer             | Next file buffer        |
| C-S-tab     | my-previous-buffer         | Previous buffer         |


## Development

For custom things, use lisp/ folder