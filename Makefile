.PHONY: brew git bash ssh

all: brew git bash ssh

brew-install:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew:
	./brew

node:
	./node

git:
	cp gitconfig ~/.gitconfig
	cp gitignore ~/.gitignore

ssh:
	[ -d ~/.ssh ] || mkdir ~/.ssh
	sudo ssh-keygen -t rsa -C "egor.a.trubnikov.panov@gmail.com"
