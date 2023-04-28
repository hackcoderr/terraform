resource "aws_instance" "my_instance" {
  ami = "ami-02eb7a4783e7e9317"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
    Name = "my instance"
  }
}

resource "aws_security_group" "my_sg" {
  name = "my-tf-sg"
  egress = [ {
    cidr_blocks = ["0.0.0.0/0"]
    description = "for outside world connection"
    from_port = 0
    ipv6_cidr_blocks = [] 
    prefix_list_ids = []
    protocol = "-1"
    security_groups = []
    self = false
    to_port = 0
  } ]

  dynamic "ingress" {
    for_each = local.ingress_rule

    content {
      description = ingress.value.description
      from_port = ingress.value.port
      to_port = ingress.value.port
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "AWS security dnamic block"
  }
 
}

locals {
  ingress_rule = [{
    port   = 443
    description = "ingress rule for port 443"
  },
  {
    port      = 80
    description = "Ingress rule for port 80"
  }
  ]
}