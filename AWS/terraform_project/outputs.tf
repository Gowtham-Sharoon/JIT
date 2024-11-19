output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = concat(aws_subnet.public[*].id, aws_subnet.private[*].id)
}

output "instance_ids" {
  value = aws_instance.ec2[*].id
}

output "elastic_ips" {
  value = aws_eip.elastic_ip[*].public_ip
}
