#concat(list1, list2, ...)- combines multiple lists into a single list
variable "list1" {
  type = list
  default = ["a","b"]
}

variable "list2" {
  type = list
  default = ["c","d"]
}

output "combined_list" {
  value = concat(var.list1, var.list2)
}