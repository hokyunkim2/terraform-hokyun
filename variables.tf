
//subnet
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

variable "nsg_name_linux" {
    type = string
    default = "test-nsg-linux"
}

variable "Linux_vm_name" {
    description = "Li"
    type = string
    default = "test-linux-vm"
}

variable "Linux_vm_size" {
    description = "VM SKU"
    type = string
    default = "Standard_B1s"
}

variable "Linux_admin_username" {
    description = "Linux VM 관리자 사용자 이름"
    type = string
    default = "azureuser"
}

variable "Linux_admin_password" {
    description = "Linux VM 관리자 암호"
    type = string
    default = "KTP@ssw0rd123"
    sensitive = true
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

variable "replication_type" {
    type = string
    default = "LRS"
}

variable "container_name" {
    type = string
    default = "tfstate"
}

variable "container_access_type" {
    type = string
    default = "private"
}

