terraform {
 backend "azurerm" {
    resource_group_name  = "Terraform-RG"
    storage_account_name = "tfstatestorage1993"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}

  
}

resource "azurerm_resource_group" "rg-01" {
  name     = "RG-Hamza"
  location = "francecentral"
}

resource "azurerm_resource_group" "rg-02" {
  name     = "RG-Chouchene"
  location = "francecentral"
}
