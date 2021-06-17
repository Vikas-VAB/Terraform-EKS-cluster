resource "aws_eks_cluster" "jarvis" {
  name     = "jarvis"
  role_arn = aws_iam_role.eksClusterRole123.arn

  vpc_config {
    security_group_ids  = [aws_security_group.myapp-sg.id]
    subnet_ids          = aws_subnet.myapp-subnet.*.id
  }

}

