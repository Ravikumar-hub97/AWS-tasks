provider "aws" {
  alias  = "us_east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us_west"
  region = "us-west-1"
}

resource "aws_instance" "ec2_us_east_1" {
  provider                  = aws.us_east
  ami                       = var.ami_us_east
  instance_type             = var.instance_type_us_east
  subnet_id                 = data.aws_subnets.default_us_east.ids[0]
  vpc_security_group_ids    = ["sg-04f1d7c4894c58bb5"]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras enable nginx1 -y
              yum install -y nginx
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "terraform-task2-ec2-us-east-1-a"
  }
}


resource "aws_instance" "ec2_us_west_1" {
  provider                  = aws.us_west
  ami                       = var.ami_us_west
  instance_type             = var.instance_type_us_west
  subnet_id                 = data.aws_subnets.default_us_west.ids[0]
  vpc_security_group_ids    = ["sg-08b217af184c21450"]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras enable nginx1 -y
              yum install -y nginx
              systemctl enable nginx
              systemctl start nginx
              EOF
  tags = {
    Name = "terraform-task2-ec2-us-west-1-a"
  }
}


data "aws_vpc" "vpc_default_us_east" {
  provider = aws.us_east
  default  = true
}

data "aws_vpc" "vpc_default_us_west" {
  provider = aws.us_west
  default  = true
}

data "aws_subnets" "default_us_east" {
  provider = aws.us_east
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_default_us_east.id]
  }

  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

data "aws_subnets" "default_us_west" {
  provider = aws.us_west
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc_default_us_west.id]
  }

  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}
