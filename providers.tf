terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0.0"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
    features {}
      tenant_id = "42c150bf-77bd-42d5-9716-d5293a1d0db9"
      subscription_id = "e3e6e158-605e-4cdd-bcb3-644fdbe81a38"
}