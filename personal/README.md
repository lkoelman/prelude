# Prelude Emacs customizations

## Installation

Clone Prelude distribution to `~/.emacs.d`.

    git clone git://github.com/lkoelman/prelude.git my_prelude_clone
    ln -s my_prelude_clone ~/.emacs.d
    cd ~/.emacs.d
    cp sample/prelude-packages.el .

Enable the Prelude modules you want to use:

    emacs ~/.emacs.d/prelude-modules.el

Install the packages loaded in personal/preload manually using `package-install`,
since they can't be auto-installed.

Restart multiple times until everything is installed. If a package is not found on MELPA but it is listed, try a `package-refresh-contents`, `package-install <package-name>`.

Merge contents of personal/custom.el.bak with the auto-generated custom.el.

### Update Prelude

See manual. But because we are running a fork we do:

``` sh
git remote add upstream https://github.com/bbatsov/prelude.git
git pull upstream # fetch and merge
```

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



### Emacs in macOS (system-integrated)

Installation using brew package manager (from [stackoverflow post](https://stackoverflow.com/questions/44092539/how-can-i-install-emacs-correctly-on-os-x))

First make sure XCode and the command line tools are installed:

- Install xcode from app store
- in shell: `xcode-select --install`

Then install Emacs from source:

```sh
brew cleanup # clean out old source files
brew doctor # check if brew installation is OK
brew update
brew upgrade
brew install emacs --with-cocoa --with-gnutls --with-librsvg --with-imagemagick@6
brew linkapps emacs # link to /Applications folder
```

### Install Rust support

Enable the rust module in `~/.emacs.d/prelude-modules.el`

Install rust

- check if already installed `rustc --version` `cargo --version` `rustup --version`
  +  if installed: update rust installation using `rustup update`

- if not installed: install using `curl https://sh.rustup.rs -sSf | sh`

- install racer for autocompletion
  + instruction are at https://github.com/racer-rust/racer :
  + `cargo install racer` -> install racer
  + `rustup component add rust-src` -> fetch rust source and keep in sync with toolchain
  + `export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"` -> add to .bashrc

## Customizations List

These are the customization w.r.t. the bare Prelude distribution:

- start from bare Prelude distribution

- add following packages (see `personal/personal-packages.el`):
  + spaceline
    - diminish a few minor modes
  + [imenu-list](https://github.com/bmag/imenu-list) for tree view of imenu items (tags/symbols)

- make following tweaks to Prelude files
  + `prelude-ui.el`: set menu-bar-mode and tool-bar-mode to +1 to show toolbars
  + `prelude-python.el`: replace `#'python-imenu-create-flat-index` by `#'python-imenu-create-index` to get tree view in imenu-list

- see other customizations in `personal` folder`
