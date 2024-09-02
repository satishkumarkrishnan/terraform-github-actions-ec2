resource "aws_instance" "newinstance" {
  ami                    = "ami-0e86e20dae9224db8"
  instance_type          = "t2.micro"
  vpc_security_group_ids = 

  tags = {
    Name        = "newinstance"
    description = "Test EC2 for GHE Actions"
  }
}
