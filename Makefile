.PHONY: install
install: \
	stow-bash \
	stow-git \
	stow-nvim \
	stow-scripts \
	stow-tmux \
	stow-zsh

.PHONY: test
test: link-bash link-git

.PHONY: stow-%
stow-%:
	 stow $*
