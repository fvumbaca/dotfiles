# My Dotfiles

This repository contains my dotfiles and configurations.

## Install Dotfiles

To install the configuration files contained in this project, you will need to
install GNU store.

Once installed, simply run `make install` from the project root to install all
included configuration files. This operation should be safe and will
immediately exit if conflicts arise.

To update any tool's configuration files, simply run `stow --adopt [tool]` from
the project root to update the tool's saved config.

