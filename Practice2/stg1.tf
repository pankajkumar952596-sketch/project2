resource "azurerm_resource_group" "example" {
  name     = "TCSRG"
  location = "central india"
}

resource "azurerm_storage_account" "example1" {
  name                     = "storageaccountname1"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
