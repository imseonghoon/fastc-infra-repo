module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0be2d7d3f0f7a6402"

  private_subnets = ["subnet-00ce78ec2e1302d45", "subnet-01428fde80339e440"]
  public_subnets  = ["subnet-09a97782322e99cd6", "subnet-0356a1c0f393f44bb"]
}