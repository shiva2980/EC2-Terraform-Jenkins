resource "aws_vpc" "myvpc" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mydemovpc"
  }
}
resource "aws_subnet" "demosubnet-1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "Subnet-1"
  }
}
resource "aws_subnet" "demosubnet-2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "Subnet-2"
  }
}
resource "aws_internet_gateway" "mygw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "Myinternetgateway"
  }
}
resource "aws_route_table" "myroute" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mygw.id
  }

  tags = {
    Name = "example"
  }
}
resource "aws_route_table" "Private-RT" {
  vpc_id = aws_vpc.myvpc.id
  }
