# --------------------------------
# AWS Connection - Private
# --------------------------------

variable "AWS_ACCESS_KEY" {
    description = "AWS Access Key ID"
}

variable "AWS_SECRET_KEY" {
    description = "AWS Secret Access Key"
}

variable "AWS_REGION" {
    description = "AWS Region"
}

# --------------------------------
# EC2 Instance/VM Specification
# --------------------------------

variable "AMIS" {
  type = "map"
  default = {
    us-west-2 = "ami-6cd6f714"    
  }
}

variable "ec2_instance_type" {
    description = "AWS EC2 instance type"
    default = "t2.micro"
}
