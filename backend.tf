terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "fano"

    workspaces {
      prefix = "ps-sso-"
    }
  }
}
