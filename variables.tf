variable "aws_access_key" {
    default = "AKIAUBC3I4IWOYDFGCXW"
}
variable "aws_secret_key" {
    default = "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"
}
variable "region" {
    default = "us-west-2"
}

variable "vpc_cidr_block" {
    default = "172.31.0.0/16"
}
variable "public_subnet_cidr_blocks" {
    default = "172.31.16.0/20"
}
variable "private_subnet_cidr_blocks" {
    default = "172.31.32.0/20"
}

variable "name_prefix" {
    default = "eks-cluster"
}
variable "cidr_block" {
    default = "10.0.0.0/16"
}

variable "name" {
    default = "my-cluster"
}
variable "policy_arn" {
    default = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly, arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}
