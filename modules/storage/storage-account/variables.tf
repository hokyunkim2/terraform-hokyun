variable "name" {
  description = "스토리지 계정 이름"
  type        = string
}
variable "resource_group_name" {
  description = "리소스 그룹 이름"
  type        = string
}
variable "location" {
  description = "리전"
  type        = string
}
variable "account_tier" {
  description = "계정 티어 (Standard 또는 Premium)"
  type        = string
  default     = "Standard"
}
variable "replication_type" {
  description = "복제 옵션 (LRS, GRS 등)"
  type        = string
}

variable "tags" {
  description = "리소스 태그"
  type        = map(string)
  default     = {}
}