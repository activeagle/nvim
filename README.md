# Neovim Config
1. [Packer](#packer)
2. [Meson](#meson)
3. [Auto complation](#autocomplation)

## Packer
- Installation
> Unix, Linux Installation
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
If you use Arch Linux, there is also [an AUR
package](https://aur.archlinux.org/packages/nvim-packer-git/).

> Windows Powershell Installation
```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```
- Configuration
Open the packer file `:so` -> `:PackerSync`


See [Tree Configuration](https://github.com/activeagle/nvim/blob/main/nvim-tree-lua.txt)
