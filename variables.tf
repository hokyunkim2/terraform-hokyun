variable "resource_group_name" {
    type = string
    default = "test-terraform-rg"
}

variable "location" {
    type = string
    default = "koreacentral"
}

variable "vnet_name" {
  type = string
  default = "test-vnet"
}

variable "address_space" {
    type = list(string)
    default = ["10.0.0.0/16"]
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {
      "test-snet-1" = {
        address_prefixes = ["10.0.1.0/24"]
      }
      "test-snet-2" = {
        address_prefixes = ["10.0.2.0/24"]
      }
      "test-snet-3" = {
        address_prefixes = ["10.0.3.0/24"]
      }
    }
}

//storage account
variable "replication_type" {
  description = "복제 옵션 (LRS, GRS 등)"
  type        = string
  default     = "LRS"
}

variable "nsg_name_windows" {
    type = string
    default = "test-nsg-windows"
}

variable "windows_vm_name" {
    description = "windows vm 이름"
    type = string
    default = "test-windows-vm"
}

variable "windows_vm_size" {
    description = "VM SKU"
    type = string
    default = "Standard_B1s"
}

variable "windows_admin_username" {
    description = "Windows VM 관리자 사용자 이름"
    type = string
    default = "azureuser"
}

variable "windows_admin_password" {
    description = "Windows VM 관리자 암호"
    type = string
    default = "KTP@ssw0rd123"
    sensitive = true
}

variable "app_service_plan_name" {
    type = string
    default = "test-asp"  
}

variable "app_service_name" {
    type = string
    default = "test-webapp-testhk"
}


variable "storage_account_name" {
    type = string
    default = "hokyun0717storage"
}

variable "account_tier" {
    type = string
    default = "Standard"
}


variable "container_name" {
    type = string
    default = "tfstate"
}

variable "container_access_type" {
    type = string
    default = "private"
}

