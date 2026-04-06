# Dotfiles

Personal editor and shell-oriented configuration tracked in Git. The main pieces here are **Vim** (plugins, colors, editing defaults) and a small **Linux installer** that applies **Git** globals plus that Vim layout.

## What lives here

- **`.vimrc`** — [Vundle](https://github.com/VundleVim/Vundle.vim) plugin list, **Solarized** (dark by default, **F5** toggles light), indentation, UI, folding, and a few mappings. Optional **Monokai** setup is left commented if you want to switch back.
- **`.vim/`** — Large collection of legacy color schemes under `.vim/colors/` (optional; Solarized is loaded from the Vundle plugin named in `.vimrc`).
- **`install_linux`** — Copies `~/.vim` and `~/.vimrc` from this repo, sets Git `user.name`, `user.email`, and `core.editor`, and clones **Vundle** and **vim-colors-solarized** into `~/.vim/bundle/`.

## Installation (Linux)

**Dependencies:** `git`, `vim`, and a shell with Bash 4+ (for prompt handling). The script clones plugins over the network.

1. Clone this repository and enter it (or run the script by path).

   ```bash
   git clone <your-repo-url> ~/dev/personal/dotfiles
   cd ~/dev/personal/dotfiles
   ```

2. Run the installer (it works from any directory; paths are resolved from the script location).

   ```bash
   chmod +x install_linux
   ./install_linux
   ```

3. Answer the prompts for Git and/or Vim as you like.

4. **Remaining Vim plugins** (e.g. NERDTree, YouCompleteMe) are declared in `.vimrc` but not cloned by the script. Open Vim and run:

   ```vim
   :PluginInstall
   ```

   **YouCompleteMe** needs its own [install/compile step](https://github.com/ycm-core/YouCompleteMe#installation) after the bundle is present; comment that plugin out in `.vimrc` if you do not want it.

## Manual setup (without the script)

Symlink or copy `.vimrc` and `.vim` into `$HOME`, install Vundle under `~/.vim/bundle/Vundle.vim`, then run `:PluginInstall`. For Solarized without Vundle, you can use the copy in `.vim/colors/solarized.vim` and point `'runtimepath'` at this repo’s `.vim` (see commented notes in `.vimrc`).

## Notes

- **`install_linux` replaces** existing `~/.vim` and `~/.vimrc` before copying from the repo. Back up first if those matter.
- For best **Solarized** colors in a terminal, use a **256-color** `TERM` (for example `xterm-256color`).
