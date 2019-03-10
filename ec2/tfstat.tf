terraform {
  backend "s3" {
    bucket = "hahsnejeb-tf"
    key    = "ec2/tfstate"
    region = "eu-west-2"
  }
}
