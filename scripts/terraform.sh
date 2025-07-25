# The flag TF_CLI_ARGS affects all Terraform commands. If you specify a named command in the
# form of TF_CLI_ARGS_<name> then it will only affect that command. As an example, to specify
# that only plans never refresh, you can set TF_CLI_ARGS_plan="-refresh=false".
# https://www.terraform.io/cli/config/environment-variables#tf_cli_args-and-tf_cli_args_name

tfver() {
    terraform --version
}

tfinit() {
    #rm -rf .terraform  # start clean

    # https://developer.hashicorp.com/terraform/language/settings/backends/configuration
    terraform init \
        -reconfigure \
        -upgrade \
        ${@}
}

tffmt() {
    terraform fmt -recursive -diff ${@}
}

tfvalidate() {
    terraform validate ${@}
}

tfimport() {
    terraform import ${@}
}

tfremove() {
    terraform state rm ${@}
}

tfplan() {
    # add -destroy for a destroy plan
    terraform plan ${@}
}

tfapply() {
    terraform apply ${@}
}

tfapply_auto() {
    terraform apply -auto-approve ${@}
}

tfdestroy() {
    terraform destroy ${@}
}

tfdestroy_auto() {
    terraform destroy -auto-approve ${@}
}
