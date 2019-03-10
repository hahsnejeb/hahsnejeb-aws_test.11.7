terraform {
  backend "s3" {
    bucket = "hahsnejeb-tf"
    key    = "http/tfstate"
    region = "eu-west-2"
  }
}
