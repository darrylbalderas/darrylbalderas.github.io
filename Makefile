new-post:
	$(eval datetime := $(shell date +"%Y%m%d"))
	$(eval year := $(shell date +"%Y"))
	$(eval uniqueId := $(shell uuidgen | cut -c 1-8 ))
	hugo new content posts/${year}/post_${datetime}_${uniqueId}.md
run:
	hugo serve -D
lint:
	pre-commit run --all-files
