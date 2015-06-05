# zftool

## Introduction

ZFTool is an utility module for maintaining modular Zend Framework 2
applications. It runs from the command line and can be installed as ZF2 module
or as PHAR

This plugin gives you access to ZFTool features without leaving your favourite
editor.

## Requirements

- Vim running inside tmux session
- Installed plugin: [vimux](https://github.com/benmills/vimux)
- Command `zf.php` available from command line. Check requirements for `zf.php`
  at official repository: [ZFTool](https://github.com/zendframework/ZFTool)

## Usage

Normal Mode:

Currently you have access to ZFTool features from command line:

- :ZFnewProject    - Project creation
- :ZFnewModule     - Module creation
- :ZFnewController - Controller creation
- :ZFnewAction     - Action creation
- :ZFrepeat        - Repeat last ZF command run

Every time you run a command values are cached in order to make next command
quickier to run

## Installation

Use your plugin manager of choice.

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/dsaenztagarro/zftool ~/.vim/bundle/zftool`
- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'https://github.com/dsaenztagarro/zftool'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'https://github.com/dsaenztagarro/zftool'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'https://github.com/dsaenztagarro/zftool'` to .vimrc
  - Run `:PlugInstall`

## License

Copyright (c) David Saenz Tagarro.  Distributed under the same terms as Vim itself.
See `:help license`.
