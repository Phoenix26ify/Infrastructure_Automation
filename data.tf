
# Get available VPC
data "aws_vpc" "all" {
}

data "aws_subnet_ids" "snet-private" {
  vpc_id = data.aws_vpc.all.id

  filter {
    name   = "tag:airbus:network"
    values = ["private"]
  }
}

data "aws_subnet" "cidr-private" {
  for_each = data.aws_subnet_ids.snet-private.ids
  id       = each.value
}

data "aws_security_group" "default-sg" {
  filter {
    name   = "group-name"
    values = ["secg-ew1-platform-ec2-mandatory"]
  }
}

