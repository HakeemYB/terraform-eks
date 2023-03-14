provider "aws" {
  region = "us-west-2"
  
}


module "vpc" {
  source = "git::https://github.com/HakeemYB/terraform-modules.git//vpc"

 
}

module "providers" {
  source = "git::https://github.com/HakeemYB/terraform-modules.git//providers"

  
}

module "routers" {
  source = "git::https://github.com/HakeemYB/terraform-modules.git//routers"

}

module "node" {
  source = "git::https://github.com/HakeemYB/terraform-modules.git//node"

 
}

module "iam" {
  source = "git::https://github.com/HakeemYB/terraform-modules.git//iam"

  name       = "eks-worker-nodes"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

module "eks" {
  source = "git::https://github.com/HakeemYB/terraform-modules.git//eks"

  name                = "my-eks-cluster"
  
  private_subnet_ids  = module.vpc.private_subnet_ids
}