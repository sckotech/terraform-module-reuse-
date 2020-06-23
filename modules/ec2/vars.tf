variable "ami" {
    type = string
    description = "(optional) describe your variable"
    default = "ami-085925f297f89fce1"
 
}

variable "instance_type" {
    type = string
    description = "(optional) describe your variable"
    default = "t2.micro"
}

variable "instance_count" { 
    type = string
    description = "count"
    default = "1"
    }

variable "subnet_id" { }