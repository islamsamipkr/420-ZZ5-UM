resource "azurerm_resource_group" "mcitresourcegroup"
{
name = "mynewresourcegroup"
location = "Canada Central"
}
resource "azurerm_storage_account" "example" {
name = "storageaccountname"
resource_group_name = azurerm_resource_group.mcitresourcegroup.name
location = azurerm_resource_group.mcitresourcegroup.location
account_tier = "Standard"
account_replication_type = "GRS"
tags = {
environment = "staging"
}
}
