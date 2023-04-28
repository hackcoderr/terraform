resource "aws_instance" "ec2_example" {
    ami = var.ami_id[count.index]
    associate_public_ip_address = var.public_ip
    instance_type = var.instance_type
    tags = var.instance_tag
    count = var.instance_count
    key_name = local.key
}

locals {
  key ="mykey"
}