ZSH_CUSTOM=/home/luca/.oh-my-zsh/custom

get-conf:
	cp ~/.zshrc dot.zshrc
	cp ~/.oh-my-zsh/themes/robbyrussell.zsh-theme .

set-conf:
	cp dot.zshrc ~/.zshrc
	cp robbyrussell.zsh-theme ~/.oh-my-zsh/themes/
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

sync:
	git commit -a -m sync
	git push
	git pull
