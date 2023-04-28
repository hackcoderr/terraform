# ## Example of count loop
# variable "iam_name" {
#     type = list(string)
  
# }


## example of each_loop

variable "iam_name" {
    type = set(string)
  
}

variable "iam_tag" {
    type = map(string)
  
}