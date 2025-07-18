# GNU make 3.81
# Note: ONESHELL and SHELLFLAGS are not supported in this version 
# http://cvs.savannah.gnu.org/viewvc/make/make/NEWS?view=markup&revision=2.109

SHELL = /bin/bash

include .env

.PHONY: gitinit scanrepo tfinit tfaudit tfimport tfremove tfapply tfdestroy
.SILENT: gitinit scanrepo tfinit tfaudit tfimport tfremove tfapply tfdestroy

gitinit:
	git init
	chmod +x scripts/git-hooks/*
	ln -s ../../scripts/git-hooks/pre-commit .git/hooks/pre-commit
	ln -s ../../scripts/git-hooks/pre-push .git/hooks/pre-push

scanrepo:
	docker run --rm --pull=always \
		-v "${PWD}:/repo" \
		checkmarx/kics:latest scan \
			--config "/repo/config/kics.yml" \
			--path "/repo" \
			--output-path "/repo/.reports"

tfinit:
	source ./scripts/helpers/terraform.sh ;\
	cd aws ;\
	terraform_init

tfaudit:
	source ./scripts/helpers/terraform.sh ;\
	cd aws ;\
    terraform init -backend=false -upgrade=true ;\
	terraform_fmt $(filter-out $@,$(MAKECMDGOALS)) ;\
	terraform_validate $(filter-out $@,$(MAKECMDGOALS))

tfimport:
	source ./scripts/helpers/terraform.sh ;\
	cd aws ;\
	terraform_import $(filter-out $@,$(MAKECMDGOALS))

tfremove:
	source ./scripts/helpers/terraform.sh ;\
	cd aws ;\
	terraform_remove $(filter-out $@,$(MAKECMDGOALS))

tfapply:
	source ./scripts/helpers/terraform.sh ;\
	cd aws ;\
	terraform_init ;\
	terraform_apply $(filter-out $@,$(MAKECMDGOALS))

tfdestroy:
	source ./scripts/helpers/terraform.sh ;\
	cd aws ;\
	terraform_init ;\
	terraform_destroy $(filter-out $@,$(MAKECMDGOALS))

# Default target
%:
	@: