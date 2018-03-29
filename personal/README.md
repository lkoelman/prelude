# Prelude Emacs customizations

## Emacs Tweaks

Improve Emacs font rendering under Linux. Create `.Xresources` file:

```
Xft.antialias:  1
Xft.hinting:    1
Xft.hintstyle:  hintfull
Xft.lcdfilter:  lcddefault
Xft.rgba:       rgb
```

Then do `xrdb -merge ~/.Xresources` in shell and restart emacs.

## Installation

Clone Prelude distribution to `~/.emacs.d`.

    git clone git://github.com/lkoelman/prelude.git my_prelude_clone
    ln -s my_prelude_clone ~/.emacs.d
    cd ~/.emacs.d
    cp sample/prelude-packages.el .

Enable the Prelude modules you want to use:

    emacs ~/.emacs.d/prelude-modules.el

Restart multiple times until everything is installed. If a package is not found on MELPA but it is listed, try a manual `M-X package-install RET` and click the package name manually using your mouse.

## Customizations List

These are the customization w.r.t. the bare Prelude distribution:

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
