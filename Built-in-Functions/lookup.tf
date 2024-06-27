#lookup(map, key): Retrieves the value associated with a specific key in a map.

variable "my_map" {
    type = map
    default = {
        "name" = "ruthvikh",
        "age" = "21"
    }
}

output "name" {
    value = lookup(var.my_map, "name")
}