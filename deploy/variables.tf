
variable "prefix" {
  type = string
  default = "pxsc-tht"
}

variable "project" {
  type = string
  default = "Test Project"
}

variable "contact" {
  type = string
  default = "mdmello@phoenixcontact-sb.io"
}

variable "db_username" {
  type = string
  description = "Username fro the postgress database"
  default= "tht"
}

variable "db_password" {
  type = string
  description = "passowrd for the postgress database"
  default= "tht"
}
