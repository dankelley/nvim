# 💤 LazyVim

## Introduction

This is based on a starter template for
[LazyVim](https://github.com/LazyVim/LazyVim), with some modifications to work
with R files. Refer to the
[documentation](https://lazyvim.github.io/installation) to get started with
lazyvim.  I have some notes on how I transitioned from lunarvim on my blog at
[https://dankelley.github.io/dek_blog/2024/07/06/setting-up-lazyvim.html](https://dankelley.github.io/dek_blog/2024/07/06/setting-up-lazyvim.html).

## Customization Details

### Turn off the autoformat-on-save feature (autocmds.lua BLOCK 1)

**Context.** Lazyvim was formatting files upon saves.  I liked this file at
first, but started to wonder whether it was causing problems with malformed
files that might confuse the LSP formatter.  I don't know for sure that this is
a problem, but in any case formatting is as simple as `SPC c f` and so I turned
off the feature by adding BLOCK 1 to the
`.config/nvim/lua/config/autocmds.lua` file.`

Note that autoformat-on-save can be turned on and off with `SPC u f`, if desired.

### Set up for editing (and running) R files

The action for this is in the `lua/plugins/rlang.lua` file.  I am using the
underline character for assignment, because I like that scheme.  If you prefer
to use the default, comment out the `opts` setting in that file.

### Make lower status line show file type

This is done in the `lua/plugins/lualine.lua` file.  I replaced something else
that showed up as an icon that I didn't understand.  Actually, there are lots
of icons that I don't understand.  One looks like a box, with a number beside
it. Another is a white plus sign in a black box, with a number beside it.  And
there is a question mark before name of the file type.  Also, it (sometimes)
displays the last command I typed, or maybe the family of commands. All of
these things -- and many more -- are mysteries to me.  But I do see merit in
leaving things alone, to avoid having things look too different from the how
they look on other folks' machines.  That's why I changed only one thing.

### Switch to a new colour scheme

I switched to `slate` by adding the `lua/plugins/colorscheme.lua` file.
