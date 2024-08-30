

# resource "aws_security_group" "default" {
  

#     dynamic ingress {
#       for_each = [22,443,80]
#       iterator = port
#       content {
#         from_port   = port.value
#       to_port     = port.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#       }


#    dynamic egress {
#       for_each = var.ports
#       iterator = port
#       content {
#         from_port   = port.value
#       to_port     = port.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }

  #   for_each = var.ports
#   ingress {
#     from_port   = each.value
#     to_port     = each.value
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# }