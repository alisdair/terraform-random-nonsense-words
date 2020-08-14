# Input variable
variable "length" {
  type = number
  default = 5
}

# A useless resource for no particular reason
resource "random_pet" "nonsense" {
  length = var.length
  separator = "-"
}

output "repro_words" {
  value = random_pet.nonsense.id
}
