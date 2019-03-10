terraform {
  backend "s3" {
    bucket = "hahsnejeb-tf"
    key    = "sg/tfstate"
    region = "eu-west-2"
  }
}
