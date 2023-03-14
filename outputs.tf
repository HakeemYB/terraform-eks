output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "iam_role_name" {
  value = module.iam.iam_role_name
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}
