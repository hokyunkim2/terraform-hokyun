// NSG - Linux
resource "azurerm_network_security_group" "nsg_linux" {
    name = var.nsg_name_linux
    location = var.location
    resource_group_name = var.resource_group_name
}
