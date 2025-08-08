resource "azurerm_resource_group" "bharatrg" {
  name     = "bs-rg1"
  location = "central india"
}

resource "azurerm_storage_account" "bharatstg" {
  name                     = "bsstg1947"
  resource_group_name      = azurerm_resource_group.bharatrg.name
  location                 = azurerm_resource_group.bharatrg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
resource "azurerm_storage_container" "bharatcontainer" {
  name                  = "bscontainer1"
  storage_account_id    = azurerm_storage_account.bharatstg.id
  container_access_type = "private"
}