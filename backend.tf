terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "fano"

    workspaces {
      name = "terraform-sso-aws"
    }
  }
}
