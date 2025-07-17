#Storage Account에 Blob 컨테이너를 생성하는 역할하는 모듈
resource "azurerm_storage_container" "blob_container" {
  name                  = var.container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type

  metadata = var.metadata
}