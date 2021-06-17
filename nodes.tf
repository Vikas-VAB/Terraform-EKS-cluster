
resource "aws_eks_node_group" "jarvis-node" {
  cluster_name    = aws_eks_cluster.jarvis.name
  node_group_name = "jarvis-node"
  node_role_arn   = aws_iam_role.eksWorkerRole123.arn
  subnet_ids      = aws_subnet.myapp-subnet.*.id
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  disk_size       = 5
  instance_types  = ["t3.medium"]

  remote_access {
    ec2_ssh_key  = "Vikasaws"
   }

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
}
