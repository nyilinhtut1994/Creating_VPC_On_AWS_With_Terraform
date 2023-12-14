output "vpc" {
  value = resource.aws_vpc.vpc_1.id
}

output "igw" {
  value = resource.aws_internet_gateway.igw_1.id
}

output "subnet_1" {
  value = resource.aws_subnet.subnet_1.id
}

output "subnet_2" {
  value = resource.aws_subnet.subnet_2.id
}

output "subnet_3" {
  value = resource.aws_subnet.subnet_3.id
}

output "route_table" {
  value = resource.aws_route_table.route_table.id
}
