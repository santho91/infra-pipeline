module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = "11.0.0.0/16"
  sub_cidr      = "11.0.1.0/24"
  az            = "${var.aws_region}b"          # us-east-1a
  env           = "qa"
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = "ami-02dfbd4ff395f2a1b"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_id
  ec2_count         = 1
  env               = "qa"
}