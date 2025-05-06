resource "azurerm_storage_account" "mcitstorage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.terraformmay022025.name
  location                 = azurerm_resource_group.terraformmay022025.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_container" "storagecontainermay" {
  name                  = var.storagecontainermay
  storage_account_id    = azurerm_storage_account.mcitstorage.id
  container_access_type = "private"
}

resource "azurerm_storage_blob" "storageblobmay" {
  name                   = var.storageblobmay
  storage_account_name   = azurerm_storage_account.mcitstorage.name
  storage_container_name = azurerm_storage_container.storagecontainermay.name
  type                   = "Block"
  source                 = "some-local-file.zip"
}
