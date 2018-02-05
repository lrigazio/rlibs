get-conf:
	cp ~/.zshrc dot.zshrc
	cp ~/.oh-my-zsh/themes/robbyrussell.zsh-theme .

set-conf:
	cp dot.zshrc ~/.zshrc
	cp robbyrussell.zsh-theme ~/.oh-my-zsh/themes/

sync:
	git commit -a -m sync
	git push
	git pull
