# aws --version
# aws eks --region us-east-1 update-kubeconfig --name in28minutes-cluster
# Uses default VPC and Subnet. Create Your Own VPC and Private Subnets for Prod Usage.
# terraform-backend-state-in28minutes-123
# AKIA4AHVNOD7OOO6T4KI

provider "aws" {
  region  = "us-east-1"
}
resource "aws_default_vpc" "default" {

}

module "miguelisaza95-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "miguelisaza95-cluster"
  cluster_version = "1.15"
  subnets         = ["subnet-d98ab893", "subnet-f4fe91a8"] #CHANGE
  #subnets = data.aws_subnet_ids.subnets.ids
  vpc_id          = aws_default_vpc.default.id

  #vpc_id         = "vpc-1234556abcdef"

  node_groups = [
    {
      instance_type = "t2.micro"
      max_capacity  = 5
      desired_capacity = 3
      min_capacity  = 3
    }
  ]
}