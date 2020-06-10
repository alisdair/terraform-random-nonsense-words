# Input variable
variable "length" {
  type = number
  default = 3
}

# Depend on datadog to trigger a provider warning
provider "datadog" { }

# A useless resource for no particular reason
resource "random_pet" "nonsense" {
  length = var.length
  separator = " "
}

output "words" {
  value = random_pet.nonsense.id
}
