variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
}
variable "resource_group_name" {
  type = string
}
variable "vnet_name" {
  type = string
}