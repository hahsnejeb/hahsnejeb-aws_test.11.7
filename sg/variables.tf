data "terraform_remote_state" "vpc" {
    backend = "s3"
    config {
      bucket = "hahsnejeb-tf"
      key    = "vpc/tfstate"
      region = "eu-west-2"
    }  
}

locals {
  "vpc_id" = "${data.terraform_remote_state.vpc.vpc_id}"
}