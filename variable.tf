variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.10.0.0/16"
}

variable "vpc_subnet_cidr" {
  type    = "list"
  default = ["10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24"]
}

variable "azs" {
  type    = "list"
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}
