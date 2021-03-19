# TFE (Terraform Cloud (née Enterprise) Comment

Creates a comment in the current Terraform Cloud Run UI via the Terraform Cloud
API.

## Prerequisites

To use this module with Terraform Cloud, create a [team token](https://www.terraform.io/docs/cloud/users-teams-organizations/api-tokens.html#team-api-tokens)
in your Terraform Cloud account. The team associated with the token must have
write access to the Terraform Cloud workspace where the module is called.

The module supports simple string values for `comment`:

```terraform
module "simple_comment" {
  source     = "git::https://github.com/bixu/terraform-bixu-tfe-comment.git?ref=main"
  team_token = var.team_token
  comment    = "This is a simple comment."
}
```

as well as multiline strings, by using HEREDOC syntax:

```terraform
module "multiline_comment" {
  source     = "git::https://github.com/bixu/terraform-bixu-tfe-comment.git?ref=main"
  team_token = var.team_token
  comment    = <<COMMENT
This is a
multiline comment.
COMMENT
}
```

You can even use Markdown formmating (so long as the Terraform Cloud UI
continues to render Markdown):

```terraform
module "simple_comment" {
  source     = "git::https://github.com/bixu/terraform-bixu-tfe-comment.git?ref=main"
  team_token = var.team_token
  comment    = "This is a comment with a `code snippet`."
}
```
