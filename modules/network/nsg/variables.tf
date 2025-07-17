variable "nsg_name_linux" {
  description = "생성할 NSG 이름"
  type        = string
  default     = "test-nsg-linux"
}

variable "location" {
  description = "NSG가 위치할 Azure 지역"
  type        = string
}

variable "resource_group_name" {
  description = "NSG가 속할 리소스 그룹 이름"
  type        = string
}

variable "tags" {
  description = "NSG에 붙일 태그 (선택사항)"
  type        = map(string)
  default     = {}
}