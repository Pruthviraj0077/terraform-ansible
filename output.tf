
# output "ips" {
#   value =aws_instance.ec2[*].public_ip

# }

# output "private" {
#   value = aws_instance.ec2[*].private_ip
# }

# output "public_ips" {
#   value = {for key, instances in aws_instance.ec2 : key=> instance.public_ip}
# }