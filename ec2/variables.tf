variable "region" 		{ default =  "eu-west-2" }
variable "ami_amazon"		{ default = "ami-07a5200f3fa9c33d3" }
variable "instance_type"	{ default = "t2.micro" }
variable "key"			{ default = "dell_local" }

data "terraform_remote_state" "vpc" {
    backend = "s3"
    config {
      bucket = "hahsnejeb-tf"
      key    = "vpc/tfstate"
      region = "eu-west-2"
    }  
}

data "terraform_remote_state" "sg" {
    backend = "s3"
    config {
      bucket = "hahsnejeb-tf"
      key    = "sg/tfstate"
      region = "eu-west-2"
    }  
}

locals {
  "subnet-1" = "${data.terraform_remote_state.vpc.subnet-1}"
}

