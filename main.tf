terraform {
  
}

locals {
  value = "Hello world"
}

variable "string_list" {
  type = list(string)
  default = [ "server1", "server2", "server3" , "server4"]
}

output "output" {
#   value = lower(local.value)
#   value = upper(local.value)
#   value = startswith(local.value, "hello")
#   value= split(" ", local.value)
#   value = min(1, 2, 3, 4, 6, 7)
#   value = max(2, 4, 6, 8, 09, 32)
#   value= length(var.string_list)
#   value = join("::", var.string_list)
  value = contains(var.string_list, "server1")
}