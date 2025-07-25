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

Source this file before you initially run terraform `source .env`.

## Layout

A limitation of Terraform is the order components are created and thus you can not create an account, and then apply configuration to that account in the
same run.  To overcome this limitation, we seperate concerns by first seeding the organization and creating accounts, configuring each accounts state, setting up shared services, and then deploying applications.

### Seeding

Organization setup with OU's, SCP's and Accounts.

Switch into the `aws/seeding` account and run `terraform apply`.

### Shared

Shared services or services that are applied to all accounts such as Buckets, GuardDuty, SecurityHub, DNS, which can pull outputs from above stages.

Switch into the `aws/shared` account and run `terraform apply`. You can also target a single service using terraforms `--target` command argument.

### State

Individual account state which can pull outputs from above stages.

Switch into the `aws/state` account and run `terraform apply`.  You can also target a single account using terraforms `--target` command argument.

### Applications

Deployment of applications into accounts which can pull outputs from any above.
