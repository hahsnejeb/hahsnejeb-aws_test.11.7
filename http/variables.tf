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

