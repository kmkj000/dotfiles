DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml .git
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

deploy:
	    @$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init:
	    @$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)

#remove:
#		@$(foreach val, $(DOTFILES_FILES), rm -rf $(
