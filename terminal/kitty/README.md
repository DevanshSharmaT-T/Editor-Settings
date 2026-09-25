# Kitty

My kitty terminal configuration.

## Using it

Copy `kitty.conf` and `current-font.conf` into your kitty config directory:

```bash
cp kitty.conf current-font.conf ~/.config/kitty/
```

## Themes

`kitty.conf` picks its colors via `include ./kitty-themes/Obsidian.conf`,
pointing at a local clone of a community theme catalog (~170 files). That
catalog is **not** committed to this repo — it's third-party bulk content,
not something I authored.

To get themes on a fresh machine, use kitty's built-in picker instead of
vendoring the catalog:

```bash
kitty +kitten themes
```

Pick "Obsidian" to match this config, or any other theme — then update the
`include` line in `kitty.conf` if the name differs.
