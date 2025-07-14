output "ec2_public_ips" {
  value = [
    aws_instance.ec2_us_east_1.public_ip,
    aws_instance.ec2_us_west_1.public_ip,
  ]
}
