provider "aws" {
  version = "~> 2.67"
  region  = "us-east-1"
}


module "my_vpc" {
    source = "../modules/vpc"

    vpc_cidr = "192.168.0.0/16"
    vpc_id = "${module.my_vpc.vpc_id}"
    subnet_cidr = "192.168.1.0/24"
   
}

module "my_web" {
    source = "../modules/ec2"
    ami = "ami-085925f297f89fce1"
    instance_type =  "t2.micro"
    instance_count = 1
    subnet_id = "${module.my_vpc.subnet_id}"

    
}
