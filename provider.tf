
provider "aws" {
  # region  = "eu-west-1"
  region = "${var.AWS_REGION}"
  profile = "tza-poc"

}