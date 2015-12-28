.SILENT:

vimrcloc = "$(HOME)/.vimrc"
vimloc = "$(HOME)/.vim"

packages = \
	https://github.com/google/vim-colorscheme-primary \
  https://github.com/severin-lemaignan/vim-minimap \
	https://github.com/justinmk/vim-syntax-extra \
	https://github.com/airblade/vim-gitgutter \
	https://github.com/heavenshell/vim-jsdoc \
  https://github.com/scrooloose/syntastic \
  https://github.com/digitaltoad/vim-jade \
	https://github.com/wavded/vim-stylus \
  https://github.com/junegunn/goyo.vim \
	https://github.com/godlygeek/tabular

all: vim/bundle vim/autoload vimrc

vim/bundle:
	mkdir -p "$(vimloc)/bundle"; \
	$(foreach file, $(packages), \
		if [ ! -d "$(vimloc)/bundle/$(notdir $(file))" ] ; then \
			git clone "$(file)" "$(vimloc)/bundle/$(notdir $(file))"; \
		fi; \
	)

vim/autoload:
	mkdir -p "$(vimloc)/autoload"; \
	curl -LSso "$(vimloc)/autoload/pathogen.vim" "https://tpo.pe/pathogen.vim"; \

vimrc:
	cp ./.vimrc ~/.vimrc

.PHONY: all
