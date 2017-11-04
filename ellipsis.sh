#!/usr/bin/env bash
#
# shinzui/neovim ellipsis package

# The following hooks can be defined to customize behavior of your package:
pkg.install() {
  sudo mkdir /usr/local/Frameworks
  sudo chown $(whoami):admin /usr/local/Frameworks
  brew install neovim
  brew install python
  brew install python3
  pip2 install neovim --upgrade --user
  pip3 install neovim --upgrade

}

pkg.link() {
  readonly files=(init.vim)

  for file in "${files[@]}"; do
    echo "${file}"
    fs.link_rfile "${file}" ~/.config/neovim/init.vim
  done
}

# pkg.push() {
#     git.push
# }

# pkg.pull() {
#     git.pull
# }

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
