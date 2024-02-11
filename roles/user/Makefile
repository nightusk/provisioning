all: vim neovim
vim: $(HOME)/.local/bin/vim
neovim: $(HOME)/.local/bin/nvim

$(HOME)/.local/src/github.com/vim/vim:
	git clone https://github.com/vim/vim.git $@ --depth=1

$(HOME)/.local/src/github.com/vim/vim/.git/HEAD: $(HOME)/.local/src/github.com/vim/vim
$(HOME)/.local/bin/vim: $(HOME)/.local/src/github.com/vim/vim/.git/HEAD
	cd $(HOME)/.local/src/github.com/vim/vim && ./configure \
		--with-features=huge \
		--enable-fail-if-missing \
		--prefix=$(HOME)/.local
	$(MAKE) --directory=$(HOME)/.local/src/github.com/vim/vim
	$(MAKE) --directory=$(HOME)/.local/src/github.com/vim/vim install

$(HOME)/.local/src/github.com/neovim/neovim:
	git clone https://github.com/neovim/neovim.git $@ --depth=1

$(HOME)/.local/src/github.com/neovim/neovim/.git/HEAD: $(HOME)/.local/src/github.com/neovim/neovim
$(HOME)/.local/bin/nvim: $(HOME)/.local/src/github.com/neovim/neovim/.git/HEAD
	$(MAKE) --directory=$(HOME)/.local/src/github.com/neovim/neovim \
		CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$(HOME)/.local" \
		CMAKE_BUILD_TYPE=RelWithDebInfo
	$(MAKE) --directory=$(HOME)/.local/src/github.com/neovim/neovim install

.PHONY: all vim neovim
