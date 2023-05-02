module "public_eks_cluster" {
  # note update the source link with the required version
  source         = "git::https://github.com/ghfaha/public_eks_cluster"
  vpc_name       = "k8s-cluster-VPC"
  cluster_name   = "k8s-cluster"
  desired_size   = 3
  max_size       = 5
  min_size       = 2
  instance_types = ["t2.micro"]