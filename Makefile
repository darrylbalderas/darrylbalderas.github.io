CURRENT_DATETIME := $(shell date +"%Y%m%d")
CURRENT_YEAR := $(shell date +"%Y")
UNIQUEID := $(shell uuidgen | cut -c 1-8)

new-post:
	hugo new content posts/${CURRENT_YEAR}/post_${CURRENT_DATETIME}_${UNIQUEID}.md
new-meetup:
	hugo new content meetups/${CURRENT_YEAR}/meetup_${CURRENT_DATETIME}_${UNIQUEID}.md
new-project:
	hugo new content projects/${CURRENT_YEAR}/project_${CURRENT_DATETIME}_${UNIQUEID}.md
run:
	hugo serve -D
lint:
	pre-commit run --all-files
update:
	git submodule update --remote themes/hugo-coder
