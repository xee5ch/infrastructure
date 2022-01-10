module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = coalesce(var.enable_nat_gateway, false)
  enable_vpn_gateway = coalesce(var.enable_vpn_gateway, false)

  tags = var.tags
}