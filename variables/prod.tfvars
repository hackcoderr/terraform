instance_type = "t2.micro"

instance_tag = {
  "Name" = "Prod-Instance"
  "Environment" = "Prod"
}

instance_count = 2

ami_id = ["ami-02eb7a4783e7e9317", "ami-0fdea1353c525c182"]

public_ip = true
