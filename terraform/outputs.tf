output "aws_vpc_ids" {
  value = [for v in module.aws_vpcs: tomap({
    "name": v.name,
    "id": v.id
  })]
}

output "aws_vpc_subnets" {
  value = [for v in module.aws_vpcs: tomap({
    "${v.id}": {
      "name": v.name,
      "private_subnets": v.private_subnets,
      "public_subnets": v.public_subnets
    }
  })]

}