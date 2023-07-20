update-modules:
	git submodule foreach --recursive 'git checkout master && git pull'
.PHONY: update-modules
