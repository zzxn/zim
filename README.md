# zim
A lightweight neovim config (for win + WSL2).

## Requirements

* python
* node (>12.12, latest is the best)
* git (>2.3, for centos you need to using [IUS source](https://ius.io/setup) and install `git236` or newer version)
* fzf (install with you package manager, e.g. `wget`)
* [packer.nvim](https://github.com/wbthomason/packer.nvim)

## Setup

* Open nvim and run `PackerSync`
* If with github access problem, just `export https_proxy...` to use a proxy
* run `:checkhealth` to check health.
* Add support for languages:
    * go: `:CocInstall coc-go`
    * python: `:CocInstall coc-pyright`
    * markdown: `:CocInstall coc-webview` `:CocInstall coc-markdown-preview-enhanced`
    * git: `:CocInstall coc-git`
    * type `(`, got `()`: `:CocInstall coc-pairs`
    * shell `:CocInstall coc-sh`


