variable "env" {
    type = string
    description = "what env we are creating vpc(dev,qa and production)"
}

variable "vpc_cidr" {
    type = string
    description = "vpc cidr"
}

variable "sub_cidr" {
    type = string
    description = "subnet cIDR"
}

variable "az" {
    type = string
    description = "availability zone for subnet"
}

