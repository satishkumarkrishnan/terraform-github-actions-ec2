resource "aws_instance" "newinstance" {
  ami                    = "ami-0e86e20dae9224db8"
  instance_type          = "t2.micro"
  #vpc_security_group_ids = [aws_security_group.ddsl-securitygroup.id]    

  tags = {
    Name        = "newinstance"
    description = "Test EC2 for GHE Actions"
  }
}
#New VPC Creation
resource "aws_vpc" "ddsl-vpc" {
  cidr_block           = var.vpc_CIDR
  instance_tenancy     = var.instanceTenancy
  enable_dns_support   = var.dnsSupport
  enable_dns_hostnames = var.dnsHostNames
  tags = {
    Name = var.vpc
    create_igw      = false
  }
}
# Create Security Groups
resource "aws_security_group" "ddsl-securitygroup" {  
  vpc_id = aws_vpc.ddsl-vpc.id
}