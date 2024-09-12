resource "aws_eks_cluster" "eks-cluster" {
  name     = var.cluster_name
  role_arn = var.service_role_arn


  vpc_config {
    subnet_ids = ["subnet-0ae0aa8c25ee68998", "set-0b33ubn2a117f76893c2"]
  }
}

resource "aws_eks_node_group" "ndg" {
  depends_on      = [aws_eks_cluster.eks-cluster]
  cluster_name    = aws_eks_cluster.eks-cluster.name
  node_group_name = var.nodes_name
  node_role_arn   = var.instance_role_arn
  subnet_ids      = ["subnet-0ae0aa8c25ee68998", "set-0b33ubn2a117f76893c2"]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
}
