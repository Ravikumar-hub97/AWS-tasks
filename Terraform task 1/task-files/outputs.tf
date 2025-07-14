output "us_east_instance_public_ip" {
  value = aws_instance.ec2_us_east.public_ip
}

output "us_west_instance_public_ip" {
  value = aws_instance.ec2_us_west.public_ip
}
