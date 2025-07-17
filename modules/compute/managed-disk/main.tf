#VM 외부에 추가로 연결하는 데이터 디스크 또는 독립 디스크 리소스를 생성하는 데 사용되는 모듈

resource "azurerm_managed_disk" "managed_disk" {
  name                 = var.name
  location             = var.location
  resource_group_name  = var.resource_group_name

  storage_account_type = var.storage_account_type
  create_option        = "Empty"
  disk_size_gb         = var.disk_size_gb
  zone                 = var.zone

  tags = var.tags
}