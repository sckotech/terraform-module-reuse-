variable "vpc_cidr" {
    type = string
    description = "VPC "
    default = "10.0.0.0/16"
}

variable "vpc_id" {}

variable "subnet_cidr" {
    type = string
    description = "subnet"
    default = "10.0.1.0/24"
}
    
