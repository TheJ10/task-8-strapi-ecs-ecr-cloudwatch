variable "image_tag" {}
variable "ecr_repository_url" {
  type = string
}

variable "execution_role_arn" {}

variable "subnet_ids" {
  type = list(string)
}

variable "db_host" {}
variable "db_name" {}
variable "db_username" {}
variable "db_password" {}
