ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

all:
	$(MAKE) install set-conf

install:
	sudo apt-get install zsh
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh > install.sh
	chmod +x ./install.sh
	./install.sh
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
	git clone https://github.com/arzzen/calc.plugin.zsh.git ~/.oh-my-zsh/plugins/calc

install-mac:
	brew install zsh
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh > install.sh
	chmod +x ./install.sh
	./install.sh
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
	git clone https://github.com/arzzen/calc.plugin.zsh.git ~/.oh-my-zsh/plugins/calc

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
	git pull
	git push
