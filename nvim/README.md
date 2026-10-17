# kickstart.nvim

## keybinds
```
SPACE [<leader>] mapleader
<leader>s search
<leader>t togle
<leader>h git Hunk
<leader>sh search Help
<leader>sk rearch keymaps
<leader>sf search files
<leader>ss search selected telescope
<leader>sw search current word
<leader>sg search grep
<leader>sd search diagnostics
<leader>sr search resume
<leader>s rearch recent
<leader><leader> find buffer
<leader>sn search neovim files
grn rename
gra goto code action
grr goto reference
gri goto inplementation
grd goto definition
drD goto declaration
gO open document symbols
gW open workspace symbols
grt goto type definition 
<leader>th toggle inlay hints
<leader>f format buffer

va)  - [V]isually select [A]round [)]paren
yinq - [Y]ank [I]nside [N]ext [Q]uote
ci'  - [C]hange [I]nside [']quote

saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
sd'   - [S]urround [D]elete [']quotes
sr)'  - [S]urround [R]eplace [)] [']

```

#### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo mkdir -p /opt/nvim-linux-x86_64
sudo chmod a+rX /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>
