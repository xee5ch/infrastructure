module "aws_vpcs" {
  source = "./modules/aws/vpc"
  for_each = {
    for v in var.vpcs :
    v.name => v
  }

  name            = each.value.name
  cidr            = each.value.cidr
  azs             = each.value.azs
  private_subnets = each.value.private_subnets
  public_subnets  = each.value.public_subnets
  tags = merge(each.value.tags, {
    Created = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", "2022-01-10T04:59:19Z")
  })
}