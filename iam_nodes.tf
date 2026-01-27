resource "aws_iam_role_policy_attachment" "cni" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    role       = aws_iam_role.eks_cluster_role.name
  
}
resource "aws_iam_role_policy_attachment" "nodes" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    role       = aws_iam_role.eks_cluster_role.name
  
}

resource "aws_iam_role_policy_attachment" "ecr" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    role       = aws_iam_role.eks_cluster_role.name

}

resource "aws_iam_role_policy_attachment" "ssm" {
    policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    role       = aws_iam_role.eks_cluster_role.name

}

resource "aws_iam_role_policy_attachment" "cloudwatch" {
    policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    role       = aws_iam_role.eks_cluster_role.name

}

resource "aws_iam_instance_profile" "nodes" {
    name = format(var.project_name)
    role = aws_iam_role.eks_cluster_role.name

}