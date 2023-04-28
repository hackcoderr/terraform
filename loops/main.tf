# Example of count loop

# resource "aws_iam_user" "my_iam" {
#      count = length(var.iam_name)
#      name = var.iam_name[count.index]
# }


# Example of each_loop
 resource "aws_iam_user" "my_iam2" {
    for_each = var.iam_name
    name = each.value
    tags = var.iam_tag
   
 }