output "pip_id" {
  value = azurerm_public_ip.pip.id
}

output "pip_address" {
  value = azurerm_public_ip.pip.ip_address
}

output "pip_fqdn" {
  value = azurerm_public_ip.pip.fqdn
}