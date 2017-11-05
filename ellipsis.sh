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
  gem install neovim

  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

pkg.link() {
  readonly files=(init.vim bundles.vim)

  for file in "${files[@]}"; do
    echo "${file}"
    fs.link_rfile "${file}" ~/.config/nvim/"${file}"
  done
}

# pkg.push() {
#     git.push
# }

pkg.pull() {
  git.pull

  pip install -U neovim
  gem update neovim
}

# pkg.installed() {
#     git.status
# }
#
# pkg.status() {
#     git.diffstat
# }
