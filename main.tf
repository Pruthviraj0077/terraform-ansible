terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "ec2" {
  for_each      = var.instances
  ami           = var.ami_id
  instance_type = each.value
  key_name      = "stark"
  # vpc_security_group_ids = ["${aws_security_group.default.id}"]
  # count         = 3
  tags = {
    Name = each.key

  }
  
  # connection {
  #   type        = "ssh"
  #   user        = "ubuntu"
  #   private_key = file("C:/Users/Asus/Downloads/stark.pem")
  #   host        = self.public_ip

  # }
  # provisioner "file" {
  #   source      = "C:/Users/Asus/Downloads/stark.pem"
  #   destination = "/home/ubuntu/stark.pem"

  # }
  # provisioner "remote-exec" {
  #   # when = each.key == "ansible" ? "create" : "ignore"
  #   inline = [
  #     "chmod 600 stark.pem",
  #     "sudo apt update",
  #     "sudo apt install software-properties-common",
  #     "sudo add-apt-repository --yes --update ppa:ansible/ansible",
  #   "sudo apt install ansible --yes"]

  # }
}
