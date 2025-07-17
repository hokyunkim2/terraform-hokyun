output "vm_id" {
  value = azurerm_linux_virtual_machine.linux.id
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.linux.name
}

output "vm_private_ip" {
  value = azurerm_linux_virtual_machine.linux.private_ip_address
}