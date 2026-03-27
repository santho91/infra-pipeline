variable "ami_id" {
    type = string
    description = "AMI id of my Ec2"
}

variable "instance_type" {
    type = string
    description = "instance type  of my ec2"
}

variable "subnet_id" {
    type = string
    description = "subnet_id of my ec2"
}

variable "ec2_count" {
    type = string
    description = "ec2-count of my ec2"
}

variable "env" {
    type = string
    description = "what env we are creating ec2(dev,qa and production)"
}