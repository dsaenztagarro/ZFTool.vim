# vimux-zftool

## Introduction

ZFTool is an utility module for maintaining modular Zend Framework 2
applications. It runs from the command line and can be installed as ZF2 module
or as PHAR

This plugin gives you access to ZFTool features without leaving your favourite
editor.

## Dependencies

This plugin depends on [vimux][1] and [zftool][2]. It also makes the assumption
that you're using tmux.

## Usage

There are a number of pre-defined [commands](#commands). You can easily map
them as needed like this:

    map <Leader>nm :ZFToolCreateModule<CR>
    map <Leader>nc :ZFToolCreateController<CR>
    map <Leader>na :ZFToolCreateAction<CR>

Every time you run a command values are cached in order to make next command
quickier to run

## Commands

* ZFToolCreateProject
* ZFToolCreateModule
* ZFToolCreateController
* ZFToolCreateAction
* ZFToolRepeat

## Installation

Use your plugin manager of choice.

- [Pathogen][3]
  - `git clone https://github.com/dsaenztagarro/vimux-zftool ~/.vim/bundle/vimux-zftool`
- [Vundle][4]
  - Add `Bundle 'https://github.com/dsaenztagarro/vimux-zftool'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle][5]
  - Add `NeoBundle 'https://github.com/dsaenztagarro/vimux-zftool'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug][6]
  - Add `Plug 'https://github.com/dsaenztagarro/vimux-zftool'` to .vimrc
  - Run `:PlugInstall`

## License

Copyright (c) David Saenz Tagarro.  Distributed under the same terms as Vim itself.
See `:help license`.

[1]: https://github.com/benmills/vimux
[2]: https://github.com/zendframework/ZFTool
[3]: https://github.com/tpope/vim-pathogen
[4]: https://github.com/gmarik/vundle
[5]: https://github.com/Shougo/neobundle.vim
[6]: https://github.com/junegunn/vim-plug
