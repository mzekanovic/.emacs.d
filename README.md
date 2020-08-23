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

## Custom shortcuts

_location_ - lisp/my-keybindings.el

| shortcuts   | function                   |         comment         |
|:-----------:|:--------------------------:|:-----------------------:|
| C-S-down    | move-text-down             | move line down          |
| C-S-up      | move-text-up               | move line up            |
| C-C d       | duplicate-thing            | duplicate               |
| C->         | mc/mark-next-like-this     | mark next selection     |
| C-<         | mc/mark-previous-like-this | mark previous selection |
| C-c C-<     | mc/mark-all-like-this      | mark all selection      |
| C-S-c C-S-c | mc/edit-lines              | edit selected lines     |
| C-M-return  | neotree-toggle             | toggle neotgreee        |
| M-x         | smex                       | Enhanced M-x            |
| M-S-x       | smex-major-mode-commands   |                         |
| C-c C-c M-x | execute-extended-command   | Old M-x                 |
| C-x C-b     | ibuffer                    | Ibuffer open            |

## Development

For custom things, use lisp/ folder
