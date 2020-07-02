#!make

push:
	git config credential.helper 'cache --timeout=3600'
	git pull
	git add .
	git commit -am "push"
	git push

build:
	docker run -v $(PWD):/srv/jekyll jekyll/builder bash -c "script/bootstrap && script/cibuild"

fork:
	curl -sL git.io/fork.sh | bash -
