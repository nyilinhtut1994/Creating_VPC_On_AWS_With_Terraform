#Creating a new VPC
resource "aws_vpc" "vpc_1" {
  provider         = aws.main 
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = true

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
resource "aws_subnet" "public_subnet" {
  provider = aws.main 
  count    = length(var.public_subnet_cidr_blocks)
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.public_subnet_cidr_blocks[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "Testing_Public_Subnet_${count.index + 1}"
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
  provider = aws.main 
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