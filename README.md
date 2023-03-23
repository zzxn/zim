# zim
A lightweight neovim config (for win + WSL2).

## Requirements

* python
* node (>12.12, latest is the best)
* git (>2.3, for centos you need to use [IUS source](https://ius.io/setup) and install `git236` or newer version)
* fzf (install with you package manager, e.g. `wget`)
* [packer.nvim](https://github.com/wbthomason/packer.nvim)

## Setup

* Open nvim and run `PackerSync`
* If with github access problem, just `export https_proxy...` to use a proxy
* run `:checkhealth` to check health.
* Add support for languages:
    - most of things will be automatically installed 
    - use `:Mason` to check language support

