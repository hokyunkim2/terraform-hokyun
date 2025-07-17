variable "name" {
  description = "VM 이름"
  type        = string
  default     = "test-linux-vm"
}

variable "location" {
  description = "배포할 위치"
  type        = string
}

variable "resource_group_name" {
  description = "배포할 리소스 그룹 이름"
  type        = string
}

variable "vm_size" {
  description = "VM SKU (예: Standard_B2s)"
  type        = string
  default     = "Standard_B2s"
}

variable "network_interface_ids" {
  description = "NIC ID 목록"
  type        = list(string)
}

variable "admin_username" {
  description = "리눅스 관리자 계정"
  type = string
  default = "azureuser"
}

variable "admin_password" {
    description = "Linux VM 관리자 암호"
    type = string
    default = "KTP@ssw0rd123"
    sensitive = true
}

variable "os_disk_type" {
  description = "OS 디스크 타입 (예: Standard_LRS)"
  type        = string
  default     = "Standard_LRS"
}

variable "image" {
  description = "이미지 참조 정보"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

variable "tags" {
  type    = map(string)
  default = {}
}