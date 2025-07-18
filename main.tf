resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}

module "vnet0717" {
  source = "./modules/network/vnet"
  vnet_name = var.vnet_name
  address_space = var.address_space
  resource_group_name = var.resource_group_name
  location = var.location
}

module "snet0717" {
  source              = "./modules/network/snet"
  subnets             = var.subnets
  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  depends_on = [ module.vnet0717 ]
}

# // NSG Rule (linux)
# resource "azurerm_network_security_rule" "ssh" {
#     name = "SSH"
#     priority = 1001
#     direction = "Inbound"
#     access = "Allow"
#     protocol = "Tcp"
#     source_port_range = "*"
#     destination_port_range = "22"
#     source_address_prefix = "*"
#     destination_address_prefix = "*"
#     resource_group_name = azurerm_resource_group.rg.name
#     network_security_group_name = azurerm_network_security_group.nsg_linux.name
# }

# // NSG association (linux)
# resource "azurerm_subnet_network_security_group_association" "subnet_nsg_linux" {
#     subnet_id = azurerm_subnet.snets["test-snet-1"].id
#     network_security_group_id = azurerm_network_security_group.nsg_linux.id
# }

# resource "azurerm_network_interface" "linux_nic" {
#     name = "${var.Linux_vm_name}-nic"
#     location = azurerm_resource_group.rg.location
#     resource_group_name = azurerm_resource_group.rg.name

#     ip_configuration {
#         name                          = "my_nic_configuration"
#         subnet_id                     = azurerm_subnet.snets["test-snet-1"].id
#         private_ip_address_allocation = "Dynamic"
#         public_ip_address_id          = azurerm_public_ip.linux_pip.id
#   }
  
# }


# resource "azurerm_linux_virtual_machine" "linux_vm" {
#     name =  var.Linux_vm_name
#     resource_group_name = azurerm_resource_group.rg.name
#     location = azurerm_resource_group.rg.location
#     admin_username = var.Linux_admin_username
#     admin_password = var.Linux_admin_password
#     network_interface_ids = [azurerm_network_interface.linux_nic.id]
#     size = var.Linux_vm_size
#     os_disk {
#       caching = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#       name = "${var.Linux_vm_name}-osdisk"
#     }
#     source_image_reference {
#       publisher = "Canonical"
#       offer = "0001-com-ubuntu-server-focal"
#       sku = "20_04-lts"
#       version = "latest"
#     }
#     disable_password_authentication = false
# }







# // NSG - Windows
# resource "azurerm_network_security_group" "nsg_windows" {
#     name = var.nsg_name_windows
#     location = azurerm_resource_group.rg.location
#     resource_group_name = azurerm_resource_group.rg.name
# }

# // NSG Rule (windows)
# resource "azurerm_network_security_rule" "rdp" {
#     name = "RDP"
#     priority = 1001
#     direction = "Inbound"
#     access = "Allow"
#     protocol = "Tcp"
#     source_port_range = "*"
#     destination_port_range = "3389"
#     source_address_prefix = "*"
#     destination_address_prefix = "*"
#     resource_group_name = azurerm_resource_group.rg.name
#     network_security_group_name = azurerm_network_security_group.nsg_windows.name
# }


# // NSG association (windows)
# resource "azurerm_subnet_network_security_group_association" "subnet_nsg_windows" {
#     subnet_id = azurerm_subnet.snets["test-snet-2"].id
#     network_security_group_id = azurerm_network_security_group.nsg_windows.id
# }

# resource "azurerm_network_interface" "windows_nic" {
#     name = "${var.windows_vm_name}-nic"
#     location = azurerm_resource_group.rg.location
#     resource_group_name = azurerm_resource_group.rg.name

#     ip_configuration {
#         name                          = "my_nic_configuration"
#         subnet_id                     = azurerm_subnet.snets["test-snet-2"].id
#         private_ip_address_allocation = "Dynamic"
#         public_ip_address_id          = azurerm_public_ip.windows_pip.id
#   }
  
# }


# resource "azurerm_windows_virtual_machine" "windows_vm" {
#     name =  var.windows_vm_name
#     resource_group_name = azurerm_resource_group.rg.name
#     location = azurerm_resource_group.rg.location
#     admin_username = var.windows_admin_username
#     admin_password = var.windows_admin_password
#     network_interface_ids = [azurerm_network_interface.windows_nic.id]
#     size = var.windows_vm_size
#     os_disk {
#       caching = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#       name = "${var.windows_vm_name}-osdisk"
#     }
#     source_image_reference {
#       publisher = "MicrosoftWindowsServer"
#       offer = "WindowsServer"
#       sku = "2022-Datacenter"
#       version = "latest"
#     }
# }

# //public ip
# resource "azurerm_public_ip" "windows_pip" {
#   name                = "${var.windows_vm_name}-pip"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   allocation_method   = "Static"
#   sku = "Standard"
# }

# resource "azurerm_service_plan" "asp" {
#     name = var.app_service_plan_name
#     resource_group_name = azurerm_resource_group.rg.name
#     location = azurerm_resource_group.rg.location
#     sku_name = "B1"
#     os_type = "Linux"
# }

# resource "azurerm_linux_web_app" "webapp" {
#     name = var.app_service_name
#     resource_group_name = azurerm_resource_group.rg.name
#     location = azurerm_resource_group.rg.location
#     service_plan_id = azurerm_service_plan.asp.id
#     site_config {
#       application_stack {
#         node_version = "18-lts"
#       }
#     }
# }


module "storage0717" {
  source              = "./modules/storage/storage-account"
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  replication_type = var.replication_type
  #enable_https_traffic_only = true
}

module "blob0717" {
    source = "./modules/storage/blob-container"
    storage_account_name = var.storage_account_name
}