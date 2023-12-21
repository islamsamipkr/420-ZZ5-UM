resource "azurerm_resource_group" "mcit420zz5um" {
  name     = "mcit_resource_group_420-ZZ5-UM"
  location = "canadacentral"
}


resource "azurerm_storage_account" "azurermmcit" {
  name                     = "${var.myname}storage${var.countNumber}"
  resource_group_name      = azurerm_resource_group.mcit420zz5um.name
  location                 = azurerm_resource_group.mcit420zz5um.location
  account_tier             = var.account_tier
  account_replication_type = "GRS"
  access_tier="Cool"
  cross_tenant_replication_enabled = false
  tags = {
    environment = "staging"
  }
}

