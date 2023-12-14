#Creating a new VPC
resource "aws_vpc" "vpc_1" {
    provider = aws.main 
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Testing-VPC-1"
  }
}

#Creating an Internet GW
resource "aws_internet_gateway" "igw_1" {
    provider = aws.main 
  vpc_id = aws_vpc.vpc_1.id

  tags = {
    Name = "Testing-IGW-1"
  }
}

#Creating a subnet_ids
resource "aws_subnet" "subnet_1" {
    provider = aws.main 
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.1.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Testing_Public_Subnet_1"
  }
}

resource "aws_subnet" "subnet_2" {
    provider = aws.main 
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.2.0/24"
  availability_zone       = "ap-southeast-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Testing_Public_Subnet_2"
  }
}

resource "aws_subnet" "subnet_3" {
    provider = aws.main 
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = "10.0.3.0/24"
  availability_zone       = "ap-southeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Testing_Public_Subnet_3"
  }
}

#Creating a new route Table
resource "aws_route_table" "route_table" {
    provider = aws.main 
  vpc_id = aws_vpc.vpc_1.id

  tags = {
    Name = "Testing_Route_Table_1"
  }
}

# Associate the Custom Route Table as the Main Route Table for the VPC
resource "aws_main_route_table_association" "main_association" {
  vpc_id                  = aws_vpc.vpc_1.id
  route_table_id          = aws_route_table.route_table.id
}

#Adding route to route Table
resource "aws_route" "internet" {
    provider = aws.main 
    route_table_id = aws_route_table.route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_1.id
}