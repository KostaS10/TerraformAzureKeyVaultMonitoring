resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = var.location
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  resource_group_name        = azurerm_resource_group.rg.name
  name                       = var.keyvault_name
  location                   = azurerm_resource_group.rg.location
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_enabled        = true
  soft_delete_retention_days = 14
}
