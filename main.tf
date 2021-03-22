# Input variable
variable "length" {
  type = number
  default = 3
}

# A useless resource for no particular reason
resource "random_pet" "nonsense" {
  length = var.length
  separator = " "
  keepers = { uuid = uuid() }

  provisioner "local-exec" {
    command = "sleep 32"
  }
}

output "words" {
  value = random_pet.nonsense.id
}
