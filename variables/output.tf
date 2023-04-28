output "my_ips" {
    value = [
        element(aws_instance.ec2_example.*.public_ip, 0),
        element(aws_instance.ec2_example.*.public_ip, 1)
    ]
  
}