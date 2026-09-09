# tmux

My tmux configuration.

## Using it

Copy `.tmux.conf` into your home directory:

```bash
cp .tmux.conf ~/.tmux.conf
```

Start `tmux`. On a fresh machine the config clones TPM (the tmux plugin manager)
and installs every plugin listed in `.tmux.conf` by itself. If you ever add a
plugin later, press `prefix + I` (that's a capital I) inside tmux to install it.

## Plugins

Plugins are **not** committed to this repo — TPM downloads them into
`~/.tmux/plugins/` on your own machine. Please don't add them here; a cloned
plugin directory carries its own `.git`, which git either refuses to track or
records as a broken submodule pointer.
