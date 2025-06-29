# Public IP of the EC2 instance
output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.nginx_ec2.public_ip
}

# Private IP of the EC2 instance
output "ec2_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.nginx_ec2.private_ip
}

# VPC ID
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

# Subnet ID
output "subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

# Security Group ID
output "security_group_id" {
  description = "Security Group ID for EC2 instance"
  value       = aws_security_group.ec2_sg.id
}

# EC2 instance ID
output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.nginx_ec2.id
}
