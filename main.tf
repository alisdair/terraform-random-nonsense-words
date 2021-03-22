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
    command = "echo sleeping && sleep 32 && echo done"
  }

  provisioner "local-exec" {
    command = "ls /"
  }
}

output "words" {
  value = random_pet.nonsense.id
}
