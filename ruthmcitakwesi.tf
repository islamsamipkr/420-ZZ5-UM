variable "storage_account_names" {
  type    = list(string)
  default = ["RuthMCITAkwesi1", "RuthMCITAkwesi2", "RuthMCITAkwesi3", "RuthMCITAkwesi4", "RuthMCITAkwesi5"]
}

resource "azurerm_storage_account" "storage_accounts" {
  count                = length(var.storage_account_names)
  name                 = var.storage_account_names[count.index]
  resource_group_name  = azurerm_resource_group.example.name
  location             = "Canada Central"  
  account_tier         = "Standard"
  account_replication  = "LRS"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "Canada Central"  
}
