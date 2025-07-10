# The flag TF_CLI_ARGS affects all Terraform commands. If you specify a named command in the
# form of TF_CLI_ARGS_<name> then it will only affect that command. As an example, to specify
# that only plans never refresh, you can set TF_CLI_ARGS_plan="-refresh=false".
# https://www.terraform.io/cli/config/environment-variables#tf_cli_args-and-tf_cli_args_name

terraform_version() {
    terraform --version
}

terraform_init() {
    #rm -rf .terraform  # start clean

    # https://developer.hashicorp.com/terraform/language/settings/backends/configuration
    terraform init \
        -reconfigure \
        -upgrade \
        ${@}
}

terraform_fmt() {
    terraform fmt -recursive -diff ${@}
}

terraform_validate() {
    terraform init -backend=false -upgrade=true
    terraform validate ${@}
}

terraform_import() {
    terraform import ${@}
}

terraform_remove() {
    terraform state rm ${@}
}

terraform_plan() {
    # add -destroy for a destroy plan
    terraform plan ${@}
}

terraform_apply() {
    terraform apply ${@}
}

terraform_apply_auto() {
    terraform apply -auto-approve ${@}
}

terraform_destroy() {
    terraform destroy ${@}
}

terraform_destroy_auto() {
    terraform destroy -auto-approve ${@}
}
