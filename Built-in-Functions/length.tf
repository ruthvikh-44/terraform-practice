#length(list): Returns the number of elements in a list.

variable "my_list1" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "list_length" {
  value = length(var.my_list1) # Returns 3
}