terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "bixu"

    workspaces {
      name = "terraform-bixu-tfe-comment"
    }
  }
}
