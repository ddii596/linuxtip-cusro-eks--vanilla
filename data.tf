data "aws_ssm_parameter" "vpc" {
    name = var.SSM_VPC
  
}
data "aws_ssm_parameter" "public_subnets" {
    count = length(var.SSM_PUBLIC_SUBNETS)
    name = var.SSM_PUBLIC_SUBNETS[count.index]

}

data "aws_ssm_parameter" "private_subnets" {
    count = length(var.SSM_PRIVATE_SUBNETS)
    name = var.SSM_PRIVATE_SUBNETS[count.index]

}

data "aws_ssm_parameter" "pods_subnets" {
    count = length(var.SSM_PODS_SUBNETS) 
    name = var.SSM_PODS_SUBNETS[count.index]
}

data "aws_eks_cluster_auth" "cluster" {
    name = aws_eks_cluster.main.id
}

data "aws_caller_identity" "current" {}