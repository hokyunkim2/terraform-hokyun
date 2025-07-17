#Azure의 스토리지 계정을 생성하는 모듈,이후 blob, file-share 등 다른 스토리지 리소스들이 이 계정에 의존
resource "azurerm_storage_account" "storage_account" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
  min_tls_version          = "TLS1_2"
  #enable_https_traffic_only = true

  tags = var.tags
}
