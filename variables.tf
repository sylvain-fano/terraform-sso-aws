variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "eu-west-3"
}

variable "permissions_list" {
  type = list(object({
    name             = string
    description      = string
    session_duration = string
    managed_policies = list(string)
    aws_accounts     = list(string)
    sso_groups       = list(string)
  }))
  description = "List of permission set properties"
  default = [ {
    aws_accounts = []
    description = "AdminAccess"
    managed_policies = []
    name = "AdminAccess"
    session_duration = "null"
    sso_groups = []
  } ]
}
