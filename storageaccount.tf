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
  name                     = "${var.prefix}${var.myname}forstorage"
  resource_group_name      = azurerm_resource_group.mcit420zz5um.name
  location                 = azurerm_resource_group.mcit420zz5um.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_container" "ct" {
  count                = length(var.component)
  name                 = "terraform-state-${element(var.component, count.index)}"
  storage_account_name = azurerm_storage_account.sa.name

}
resource "azurerm_storage_account" "azurermmcitcountexample" {
  count=5
  name                     = "${var.myname}storage${count.index}"
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
