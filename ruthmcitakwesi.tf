variable "storage_account_names" {
  type    = list(string)
  default = ["JohnMCITLastname1", "JaneMCITLastname1", "AlexMCITLastname1", "EmilyMCITLastname1"]
}

resource "azurerm_storage_account" "storage_accounts" {
  count                = length(var.storage_account_names)
  name                 = var.storage_account_names[count.index]
  resource_group_name  = azurerm_resource_group.example.name
  location             = "East US"  # Replace with your desired location
  account_tier         = "Standard"
  account_replication  = "LRS"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "East US"  # Replace with your desired location
}
