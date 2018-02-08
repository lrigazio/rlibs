ZSH_CUSTOM=/home/luca/.oh-my-zsh/custom

all:
	$(MAKE) install set-conf

install:
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

get-conf:
	cp ~/.zshrc dot.zshrc
	cp ~/.oh-my-zsh/themes/robbyrussell.zsh-theme .
	cp ~/.gitconfig dot.gitconfig

set-conf:
	cp dot.zshrc ~/.zshrc
	cp robbyrussell.zsh-theme ~/.oh-my-zsh/themes/
	cp dot.gitconfig ~/.gitconfig

sync:
	git commit -a -m sync
	git push
	git pull
