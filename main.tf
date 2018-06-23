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

resource "aws_subnet" "subnets" {
  count      = "${length(var.azs)}"
  vpc_id     = "${aws_vpc.sanket_test_1.id}"
  cidr_block = "${element(var.vpc_subnet_cidr, count.index)}"

  tags {
    Name = "subnet_${count.index+1}"
  }
}
