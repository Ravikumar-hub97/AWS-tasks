variable "ami_us_east" {
  type        = string
  description = "AMI ID for us-east-1 region"
}

variable "ami_us_west" {
  type        = string
  description = "AMI ID for us-west-2 region"
}

variable "instance_type_us_east" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}


variable "instance_type_us_west" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.nano"
}
