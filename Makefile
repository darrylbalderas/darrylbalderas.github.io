new-post:
	$(eval datetime := $(shell date +"%Y%m%d"))
	$(eval year := $(shell date +"%Y"))
	$(eval uniqueId := $(shell uuidgen | cut -c 1-8 ))
	mkdir -p meetups/${year}
	hugo new content posts/${year}/post_${datetime}_${uniqueId}.md
new-meetup:
	$(eval datetime := $(shell date +"%Y%m%d"))
	$(eval year := $(shell date +"%Y"))
	$(eval uniqueId := $(shell uuidgen | cut -c 1-8 ))
	mkdir -p meetups/${year}
	hugo new content meetups/${year}/meetup_${datetime}_${uniqueId}.md
run:
	hugo serve -D
lint:
	pre-commit run --all-files
update:
	git submodule update --remote themes/hugo-coder
