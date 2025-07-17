variable "name" {
  description = "디스크 이름"
  type        = string
}

variable "location" {
  description = "디스크 생성 위치"
  type        = string
}

variable "resource_group_name" {
  description = "디스크가 포함될 리소스 그룹"
  type        = string
}

variable "storage_account_type" {
  description = "디스크 타입 (예: Standard_LRS, Premium_LRS)"
  type        = string
  default     = "Standard_LRS"
}

variable "disk_size_gb" {
  description = "디스크 크기 (GB 단위)"
  type        = number
}

variable "zone" {
  description = "가용성 존 (선택)"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {}
}