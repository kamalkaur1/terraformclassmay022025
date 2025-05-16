variable "service_name" {
  default = "abracadabra"
}

variable "environments" {
  default = ["dev", "qa", "stage", "prod"]
}

locals {
  full_service_names = {
    for env in var.environments :
    env => "${var.service_name}-${env}"
  }
}

resource "azurerm_storage_account" "mcitstoremay2025" {
  for_each = local.full_service_names


  name                     = each.value
  resource_group_name      = "mcit-resources"
  location                 = "East US"
  account_tier              = "Standard"
  account_replication_type = "LRS"
}
