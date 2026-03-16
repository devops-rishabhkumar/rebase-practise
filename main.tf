resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform"
  location = "eastus"
}

resource "azurerm_storage_container" "container" {
    name = "tf.state"
    container_access_type = "private"
}

resource "azurerm_resource_group" "change1" {
  name     = "rg-change"
  location = "eastus"
}

resource "azurerm_resource_group" "rg3" {
  name     = "rg-change3"
  location = "eastus"
}
resource "azurerm_storage_container" "container2" {
    name = "tf.state"
    container_access_type = "public"
}
