
module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "10.0.0.0/16"
  sub_cidr      = "10.0.1.0/24"
  az            = "${var.aws_region}a"          # us-east-1a
  env           = "dev"
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = "ami-02dfbd4ff395f2a1b"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_id
  ec2_count         = 1
  env               = "dev"
}
