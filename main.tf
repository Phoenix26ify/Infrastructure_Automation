/* adding a comment and pushing it to the code repo */
/* adding a second line and pushing it to the code repo */

resource "aws_instance" "my-first-server" {
  ami           = "ami-01edfef1bf3e1a87a"
  instance_type = "t2.micro"
  subnet_id     = tolist(data.aws_subnet_ids.snet-private.ids)[count.index]
  count         = "1"

  tags = {
    Name = "my tag"
  }


}

