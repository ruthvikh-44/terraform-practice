# element(list, index): Returns the element at the specified index in a list.

variable "list3" {
  type    = list
  default = ["apple", "banana", "cherry"]
}

output "selected_element" {
  value = element(var.list3, 1) # Returns "banana"
}