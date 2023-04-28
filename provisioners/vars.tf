variable "instance_type" {
    type = string
}

variable "instance_tag" {
    type = map(string)  
}

variable "ami_id" {
    type = string
}

variable "public_ip" {
    type = bool 
}


variable "key_name" {
  type = string
}