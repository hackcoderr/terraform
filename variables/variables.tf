variable "instance_type" {
    type = string
}

variable "instance_tag" {
    type = map(string)  
}

variable "instance_count" {
    type = number
}

variable "ami_id" {
    type = list(string)
}

variable "public_ip" {
    type = bool 
}


################### EXAMPLES OF VARIABLES##############################
# variable "instance_tag" {
#   description = "project name and environment"
#   type        = map(string)
#   default     = {
#     Name     = "project-alpha",
#     environment = "dev"
#   }
# }

# variable "instance_type" {
#    description = "Instance type"
#    type        = string
#    default     = "t2.micro"
# }

# variable "instance_count" {
#   description = "Number of instance"
#   type        = number
#   default     = 2
# }

# variable "public_ip" {
#   description = "Enable public IP Address"
#   type        = bool
#   default     = true
# }

# variable "ami_id"{
#   description = "Amazon machine image"
#   type        = list(string)
#   default     = ["ami-02eb7a4783e7e9317", "ami-0fdea1353c525c182"]
# }