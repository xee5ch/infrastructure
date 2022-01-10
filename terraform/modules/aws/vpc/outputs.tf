output "region" {
    value = data.aws_region.this
}

output "caller_identity" {
    value = data.aws_caller_identity.this
}

output "id" {
    value = module.vpc.vpc_id
}

output "name" {
    value = module.vpc.name
}