resource "aws_instance" "my_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = "aws_key"
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = var.instance_tag

  provisioner "file" {
    source = "/home/sachin/Documents/terraform/provisioners/test.txt"
    destination = "/home/ubuntu/test.txt"
  }

## example of file

  provisioner "file" {
    content = "I am justing copy some content in test.txt file for checking the content argument"
    destination = "/home/ubuntu/test.txt"
  }
## example of local-exec
  provisioner "local-exec" {
    command = "touch test1.txt"
  }
## example of remote-exec

  provisioner "remote-exec" {
    inline = [
      "touch hello.txt",
      "echo hello world >> world.txt",
    ]
  }
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("/home/sachin/Documents/keys/aws_key")
    host = aws_instance.my_instance.public_ip
    timeout = "4m"
  }
}


resource "aws_security_group" "my_sg" {
  egress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "for outside world connection"
    from_port = 0
    ipv6_cidr_blocks = [] 
    prefix_list_ids = []
    protocol = "-1"
    security_groups = []
    self = false
    to_port = 0
  } ]
  ingress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "for inside connection"
    from_port = 22
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    protocol = "tcp"
    security_groups = []
    self = false
    to_port = 22
  } ]
}

resource "aws_key_pair" "my_key" {
  key_name = "aws_key"
  public_key = var.key_name
}
