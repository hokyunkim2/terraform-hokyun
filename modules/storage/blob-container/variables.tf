variable "storage_account_name" {
  description = "Blob을 생성할 Storage Account 이름"
  type        = string
  default     = "hokyun0717storage"
}


variable "metadata" {
  description = "Blob Container에 설정할 메타데이터"
  type        = map(string)
  default     = {}
}


variable "container_name" {
    description = "Blob Container 이름"
    type = string
    default = "tfstate"
}

variable "container_access_type" {
    description = "공개 접근 수준 (private | blob | container)"
    type = string
    default = "private"
}