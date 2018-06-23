provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "sanket_test_1" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags {
    Name     = "sanket_test_1"
    Location = "Oregon"
  }
}

resource "aws_subnet" "sanket_subnet_oregon_v1" {
  vpc_id     = "${aws_vpc.sanket_test_1.id}"
  cidr_block = "${var.vpc_subnet_cidr_1}"

  tags {
    Name = "sanket_subnet_oregon_v1"
  }
}

resource "aws_subnet" "sanket_subnet_oregon_v2" {
  vpc_id     = "${aws_vpc.sanket_test_1.id}"
  cidr_block = "${var.vpc_subnet_cidr_2}"

  tags {
    Name = "sanket_subnet_oregon_v2"
  }
}
