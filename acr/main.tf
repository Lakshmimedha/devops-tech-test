resource "azurerm_container_registry" "acr" {
  name                = "pyflaskcont"
  resource_group_name = "testrg"
  location            = "eastus2"
  sku                 = "Premium"
  admin_enabled       = false
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
