variable "name" {
  description = "Public IP 이름"
  type        = string
}

variable "resource_group_name" {
  description = "리소스 그룹 이름"
  type        = string
}

variable "location" {
  description = "리소스 위치"
  type        = string
}

variable "allocation_method" {
  description = "IP 할당 방식 (Static 또는 Dynamic)"
  type        = string
  default     = "Static"
}

variable "sku" {
  description = "Public IP SKU (Basic 또는 Standard)"
  type        = string
  default     = "Standard"
}

variable "domain_name_label" {
  description = "DNS 이름 구성용 도메인 라벨 (선택)"
  type        = string
  default     = null
}

variable "idle_timeout" {
  description = "연결 없는 상태에서의 시간(분)"
  type        = number
  default     = 4
}

variable "tags" {
  description = "태그"
  type        = map(string)
  default     = {}
}