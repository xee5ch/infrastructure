output "aws_vpc_ids" {
  value = [for v in module.aws_vpcs: tomap({
    "name": v.name,
    "id": v.id
  })]
}