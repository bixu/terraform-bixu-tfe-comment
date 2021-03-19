variable "comment" {
  type        = string
  description = "Raw text to be posted as a comment in Terraform Cloud's UI during an `apply` operation."
}

variable "team_token" {
  type        = string
  description = "Terraform Cloud token generated at https://app.terraform.io/app/bixu/settings/teams."
}
