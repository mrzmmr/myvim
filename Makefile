VIMLOC = '$(HOME)/.vim'
VIMRCLOC = '$(HOME)/.vimrc'

all:
	cp $(VIMRCLOC) ./vimrc  ;
	cp -r $(VIMLOC) ./vim ;

clean:
	rm -rf ./vimrc ;
	rm -rf ./vim   ;
