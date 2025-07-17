//public ip
resource "azurerm_public_ip" "linux_pip" {
  name                = "${var.Linux_vm_name}-pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku = "Standard"
}

#Azure에서 Public IP Address (PIP) 리소스를 생성하여 VM, Load Balancer, NAT Gateway 등에 연결할 수 있도록 구성하는 모듈

resource "azurerm_public_ip" "pip" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method   = var.allocation_method       # Static or Dynamic
  sku                 = var.sku                     # Basic or Standard

  domain_name_label   = var.domain_name_label       # Optional, DNS 이름 구성 시 사용
  idle_timeout_in_minutes = var.idle_timeout        # Optional

  tags                = var.tags
}