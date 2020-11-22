# Nvim Config

My init.vim and ftplugins

* Clone this into `~/.config/nvim/`
    * For the Plugins in init.vim to work, you'll need to install `plug.vim` to `~/.local/share/nvim/site/autoload`

```
curl -fLo ~/.local/share/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* Make soft links from `javascript.vim`, `markdown.vim`, `plantuml.vim` to `~/.local/share/nvim/site/ftplugin/`

Unfortunately, the install and config folders seem to vary from platform to platform. YMMV.

Also consider soft links to appropriate folders in `~/.vim/` to have the same setup in vim, gvim, nvim, nvim-qt, etc etc.
