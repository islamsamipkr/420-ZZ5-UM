resource "azurerm_storage_account" "azurermmcit" {
  name                     = "${var.myname}storage${var.countNumber}"
  resource_group_name      = azurerm_resource_group.mcit420zz5um.name
  location                 = azurerm_resource_group.mcit420zz5um.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier=var.access_tier
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled
  tags = {
    environment = var.environment
  }
}
resource "azurerm_storage_account" "sa" {
  name                     = "${lower(var.naming_prefix)}${random_integer.sa_num.result}"
  resource_group_name      = azurerm_resource_group.mcit420zz5um.name
  location                 = azurerm_resource_group.mcit420zz5um.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_container" "ct" {
  #count                = length(var.component)
  name                 = "terraform-state${var.component}"
  storage_account_name = azurerm_storage_account.sa.name

}
