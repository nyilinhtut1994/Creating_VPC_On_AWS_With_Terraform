output "vpc" {
  value = resource.aws_vpc.vpc_1.id
}

output "igw" {
  value = resource.aws_internet_gateway.igw_1.id
}


output "route_table" {
  value = resource.aws_route_table.route_table.id
}
