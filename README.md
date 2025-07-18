# AWS Landing Zone

Deploys a landing-zone in AWS according to Invicara standards and AWS best practices.

## Initial setup

Create an AWS profile to connect to `invicara-main`. For example:

```shell
[sso-session invicara]
sso_start_url = https://invicara.awsapps.com/start/#
sso_region = eu-west-1
sso_registration_scopes = sso:account:access

[profile invicara-main]
sso_session = invicara
sso_account_id = 105561173654
sso_role_name = AdministratorAccess
region = eu-west-1
output = json
```

Create a `.env` file in the root which exports your AWS_PROFILE for `invicara-main`. For example:

```shell
export AWS_PROFILE=invicara-main
```

## Run

From the root, type `make tfapply`, or switch into the `aws` directory and use `terraform apply` ensuring you `source .env` first.
