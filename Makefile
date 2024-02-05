new-post:
	$(eval datetime := $(shell date +"%Y%m%d"))
	$(eval uniqueId := $(shell uuidgen | cut -c 1-8 ))
	hugo new content posts/post_${datetime}_${uniqueId}.md
