# Prelude Emacs customizations

## Emacs Tweaks

Improve Emacs font rendering. Create `.Xresources` file:

```
Xft.antialias:  1
Xft.hinting:    1
Xft.hintstyle:  hintfull
Xft.lcdfilter:  lcddefault
Xft.rgba:       rgb
```

Then do `xrdb -merge ~/.Xresources` in shell and restart emacs.

## Installation

Install Prelude distribution in `~/.emacs.d`.

    git clone git://github.com/bbatsov/prelude.git path/to/local/repo
    ln -s path/to/local/repo ~/.emacs.d
    cd ~/.emacs.d
    cp sample/prelude-packages.el .

Symlink `~/.emacs.d/personal` to this directory:

    ln -s /path/to/prelude_personal ~/.emacs.d/personal

Enable the Prelude modules you want to use:

    emacs ~/.emacs.d/prelude-modules.el

## Customizations List

These are the customization from the bare Prelude distribution:

- start from bare Prelude distribution

- add following packages (see `personal/personal-packages.el`):
  + markdown-theme
  + spaceline
    - diminish a few minor modes
  + [imenu-list](https://github.com/bmag/imenu-list) for tree view of imenu items (tags/symbols)

- make following tweaks to Prelude files
  + `prelude-ui.el`: set menu-bar-mode and tool-bar-mode to +1 to show toolbars
  + `prelude-python.el`: replace `#'python-imenu-create-flat-index` by `#'python-imenu-create-index` to get tree view in imenu-list

- see other customizations in `personal` folder`
