resource "aws_vpc" "vpc_main" {
  cidr_block = "${var.cidr_block}"
  instance_tenancy = "default"
  tags {
      Name = "vpc_main"
      Location = "${var.region}"
  }
}

output "vpc_id" {
  value = "${aws_vpc.vpc_main.id}"
}

resource "aws_subnet" "subnet-1" {
  vpc_id = "${aws_vpc.vpc_main.id}"
  cidr_block = "${var.subnet-1}"
  tags {
    Name = "subnet_10.0.0.1/24"
    }
  }

output "subnet-1" {
  value = "${aws_subnet.subnet-1.id}"
}

resource "aws_internet_gateway" "vpc_main_ig" {
  vpc_id = "${aws_vpc.vpc_main.id}"
  tags {
    Name = "vpc_main_ig"
  }
}

# associated subnet with route table and added route out via IG






