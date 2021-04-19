# Adding variables in the terraform file
provider "aws" {
  # region  = "eu-west-1"
  region = "${var.AWS_REGION}"
  profile = "tza-poc"

}