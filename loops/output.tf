output "print_the_user_name" {
    value = [for name in var.iam_name : name]
}