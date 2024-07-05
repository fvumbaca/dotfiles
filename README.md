# My Dotfiles

This repository contains my dotfiles and configurations.

## Install Dotfiles

To install the configuration files contained in this project, you will need to
install GNU store.

Once installed, simply run `stow */` from the project root to install all
included configuration files. Note that if the repo is not cloned into a
directory that is a direct child of `$HOME`, you will also need to pass the `-t
$HOME` flag to make sure stow operates correctly.

To update any tool's configuration files, simply run `stow --adopt [tool]` from
the project root to update the tool's saved config.
