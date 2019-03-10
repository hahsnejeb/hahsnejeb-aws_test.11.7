terraform {
  backend "s3" {
    bucket = "hahsnejeb-tf"
    key    = "vpc/tfstate"
    region = "eu-west-2"
  }
}
