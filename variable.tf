variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.10.0.0/16"
}

variable "vpc_subnet_cidr_1" {
  default = "10.10.0.0/24"
}

variable "vpc_subnet_cidr_2" {
  default = "10.10.1.0/24"
}
