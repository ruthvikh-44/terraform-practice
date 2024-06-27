variable "keys" {
  type = list
  default = ["name", "age"]
}

variable "values" {
  type = list
  default = ["ruthvikh", "21"]
}

output "name_age_map" {
    value = tomap({
    for k, v in zipmap(var.keys, var.values) : k => v
  })
}
