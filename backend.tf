terraform {
  backend "azurerm" {
    resource_group_name = "test-terraform-rg"
    storage_account_name = "hokyun0717storage"
    container_name = "tfstate"
    key = "prod.terraform.ftsate"
    
  }
}