variable "name" {
    description = "The intended name of the VPC."
    type = string
}

variable "cidr" {
    description = "The VPC network range in CIDR notation."
    type = string
}

variable "azs" {
    description = "The list of AZs to target when making the VPC."
    type = set(string)
}

variable "private_subnets" {
    description = "A list of one or more intended private subnets in CIDR notation form."
    type = set(string)
}

variable "public_subnets" {
    description = "A list of one or more intended public subnets in CIDR notation form."
    type = set(string)
}

variable "enable_nat_gateway" {
    description = "A flag to indicating whether or not to create a NAT gateway."
    type = bool
    default = false
}

variable "enable_vpn_gateway" {
    description = "A flag to indicating whether or not to create a VPN gateway."
    type = bool
    default = false
}

variable "tags" {
    description = "Any additional tags for the VPC and nested resources."
    type = map(string)
}