variable "managed_disk_id" {
  description = "붙일 디스크 ID"
  type        = string
}

variable "virtual_machine_id" {
  description = "대상 VM ID"
  type        = string
}

variable "lun" {
  description = "디스크 LUN 번호"
  type        = number
  default     = 0
}

variable "caching" {
  description = "캐싱 설정 (None, ReadOnly, ReadWrite)"
  type        = string
  default     = "ReadWrite"
}