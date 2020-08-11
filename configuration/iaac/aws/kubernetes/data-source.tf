data "aws_subnet_ids" "subnets" {
  vpc_id = aws_default_vpc.default.id
}

data "aws_eks_cluster" "cluster" {
  name = module.miguelisaza95-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.miguelisaza95-cluster.cluster_id
}