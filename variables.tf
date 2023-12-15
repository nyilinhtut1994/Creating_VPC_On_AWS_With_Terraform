variable "vpc_cidr_block" {
    default = "192.168.0.0/16"
}

variable "public_subnet_cidr_blocks" {
    default = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "availability_zones" {
    default = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}