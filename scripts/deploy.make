STAGING_REMOTE_NAME := heroku_staging
PRODUCTION_REMOTE_NAME := heroku_production
CURRENT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

all:
	echo 'nope'

staging: merge_current_branch_to_staging deploy_staging

production: checkout_master pull_master deploy_production

deploy_staging: back_to_branch
	git push --force $(STAGING_REMOTE_NAME) staging:master

deploy_production:
	git push $(PRODUCTION_REMOTE_NAME) master

merge_current_branch_to_staging: ensure_staging_branch_exists
	git checkout staging
	git pull origin staging
	git merge $(CURRENT_BRANCH) --no-edit
	git push origin staging

ensure_staging_branch_exists:
	-git branch staging

back_to_branch:
	git checkout $(CURRENT_BRANCH)

checkout_master:
	git checkout master

pull_master:
	git pull --rebase origin master
