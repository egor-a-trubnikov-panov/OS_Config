.PHONY: brew git bash ssh

all: brew-install brew git bash ssh

brew-install:
	curl -L github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C /usr/local
	brew install phinze/cask/brew-cask

brew:
	./brew

node:
	./node

git:
	cp git-completion.bash ~/.git-completion.bash
	cp gitconfig ~/.gitconfig
	cp gitignore ~/.gitignore

bash:
	cp bash_profile ~/.bash_profile

ssh:
	[ -d ~/.ssh ] || mkdir ~/.ssh
	sudo ssh-keygen -t rsa -C "egor.a.trubnikov.panov@gmail.com"
