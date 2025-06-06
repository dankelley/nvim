# 💤 LazyVim

## Introduction

This is based on a starter template for [LazyVim](https://github.com/LazyVim/LazyVim), with some modifications to work with R files. Refer to the [documentation](https://lazyvim.github.io/installation) to get started with lazyvim.  I have some notes on how I transitioned from lunarvim on my blog at [https://dankelley.github.io/dek_blog/2024/07/06/setting-up-lazyvim.html](https://dankelley.github.io/dek_blog/2024/07/06/setting-up-lazyvim.html).

But, before I start, I ought to explain how I installed `neovim`. I work on MacOS, and so I either install a development version from the neovim website or, for something a bit more stable, I use homebrew (`brew install neovim`).

## Customization Details

### Use a 'nerd' font in terminal settings

It helps to use a "nerd" font, so that various icons will show up in the lualine and elsewhere.  I am finding `JetBrainsMono Nerd Font` to my liking lately, and so that is what I have set for my iTerm2 profile.

### Turn off the autoformat-on-save feature (autocmds.lua BLOCK 1)

**Context.** Lazyvim was formatting files upon saves.  I liked this feature at first, but after a while, I started to wonder whether it was causing problems with malformed files that might confuse the LSP formatter.  I don't know for sure that this is a problem, but in any case formatting is as simple as `SPC c f` and so I turned off the feature by adding BLOCK 1 to the `.config/nvim/lua/config/autocmds.lua` file.`

Note that autoformat-on-save can be turned on and off with `SPC u f`, if desired.

### Set up for editing (and running) R files

The main action for this is in the `lua/plugins/rlang.lua` file.  I am using the underline character for assignment, because I like that scheme.  If you prefer to use the default, comment out the `opts` setting in that file.  Also, I like to use `,` for the local leader in R, and I do that in NOTE 1 of the `lua/config/options.lua` file.

### Make lower status line show file type

This is done in the `lua/plugins/lualine.lua` file.  I replaced something else that showed up as an icon that I didn't understand.  Actually, there are lots of icons that I don't understand.  One looks like a box, with a number beside it. Another is a white plus sign in a black box, with a number beside it.  And there is a question mark before name of the file type.  Also, it (sometimes) displays the last command I typed, or maybe the family of commands. All of these things -- and many more -- are mysteries to me.  But I do see merit in leaving things alone, to avoid having things look too different from the how they look on other folks' machines.  That's why I changed only one thing.

### Switch to a new colour scheme

I switched to `slate` by adding the `lua/plugins/colorscheme.lua` file. It's easy to switch color schemes on the fly (just type `colorscheme` and then TAB and you'll see the choices) and I do that quite often, if I'm getting tired and want a break. I dislike the pastel ones but for example `:colorscheme evening` is one that I switch to quite often. The scheme I prefer depends a bit on the sort of content I'm editing, because for example in markdown (that's the format in the file I'm editing here) does not colourize section headings in all the schemes.

### Use soft wrapping

I set up soft wrapping (as explained by Clark Richards) at NOTE 2 of the `lua/config/options.lua` file.

### Store copied things on system clipboard

To make any copying command also copy to the system clipboard, something I learned at about 9:42 of Reference 1, I did as at NOTE 3 of the `lua/config/options.lua` file.

### Set up telescope

To do this, I copied `lua/plugins/telescope.lua` in the supplemental materials for Reference 1.

## Prevent long-line warnings for .md files

The warning is MD013, and I did a lot of web searching for ways to make this go away.  None of them worked, even though some were marked as "answers" on the discussion sites.  (I even ran into code that was marked as an answer that was not valid lua.)

And, of course, there is always the possibility that things that worked a year ago, even earlier this year, might not work today.  Packages change over time.

I installed a standalone tester by doing

```sh
brew install markdownlint-cli
```

and tried that out.  Its documentation suggests that

```sh
markdownlint-cli --disable MD013 file.md
```

ought to work, but it does not.  However, if I do

```sh
markdownlint-cli --disable=MD013 file.md
```

then it does work.  I see a glimmer of hope in this result.  Perhaps this explains why the neovim lua codes I've seen are not working, for they seem to be passing the first form to the linter. I tried using `"--disable=MD013"` in the lua code, but that did not work.  I'm just guessing here, though, and my patience is wearing thin, given what I consider to be somewhat minimal benefits of using a linter on markdown.

I may return to this from time to time, in hopes that somebody will suggest a solution that works in neovim.  In the meantime, I found two solutions, as follows.

*Method 1.* Put a comment in the markdown file, in the following form.  I do not know whether this will mess things up if you are converting the markdown to formats other than html, though.

```html
<!- markdownlint-disable MD013 -->
```

*Method 2.* Create a file in the same directory of your markdown file, named `.markdownlint.yaml` and containing the following.  I got this hint from a posting by [David Anson](https://github.com/DavidAnson/markdownlint/blob/v0.32.1/schema/.markdownlint.yaml), who is the author of `markdownlint` and so I think this is a good source.

```yaml
MD013: false
```

Alternatively, create a local `.markdownlint.jsonc` file with contents

```json
{
    "MD013": false
}
```

*Method 3.* **Does not work for me!**  Put the `.mardownlint.jsonc` file from the previous method in your top (`~`) directory, and put the following into a file named `~/.config/nvim/plugins/lint.lua`.  Supposedly, this will make long lines be accepted for any file.  However, this does not work for me.  I don't know why, and am including this just as a starting point for later exploration (likely not by me ... I am happy enough with the local solution of method 2).

```lua
return {
    {
        "mfussenegger/nvim-lint",
            opts = {
                linters = {
                    markdownlint = {
                        args = { "--config", "~/.markdownlint.jsonc", "--" },
                    },
                },
            },
    },
}
```

## Silence low-priority popup messages

This is done in `plugins/notify.lua`. To find the number scheme, type

```lua
print(vim.inspect(vim.log.levels))
```

in a neovim window.

## Disable minipairs

This following line in `options.lua` (see Reference 2) prevents the editor from
entering a second quote when `"` is typed, or a second brace when `{` is typed.

```lua
vim.b.minipairs_disable = true
```

## References

1. How I Setup Neovim To Make It AMAZING in 2024: The Ultimate Guide, 2024. <https://www.youtube.com/watch?v=6pAG3BHurdM>.

2. <https://www.reddit.com/r/neovim/comments/1am1t7l/lazyvim_how_to_turn_off_automatic_double_backticks/>)
