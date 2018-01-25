get-conf:
	cp ~/.zshrc dot.zshrc

set-conf:
	cp dot.zshrc ~/.zshrc

sync:
	git commit -a -m sync
	git push
	git pull
