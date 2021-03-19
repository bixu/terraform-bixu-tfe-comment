# TFE (Terraform Cloud (née Enterprise) Comment

Creates a comment in the current Terraform Cloud Run UI via the Terraform Cloud
API. Requires a Terraform Cloud [Team Token](https://www.terraform.io/docs/cloud/users-teams-organizations/api-tokens.html#team-api-tokens)
to be passed in as the input

```shell
team_token
```

This token must be associated with a team that has `write` access to the
workspace performing the `apply`. Comments are only supported for the `apply`
view in the Terraform Cloud UI.

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| comment | n/a | `string` | n/a | yes |
| team\_token | n/a | `string` | n/a | yes |

## Outputs

No output.

<!--- END_TF_DOCS --->
