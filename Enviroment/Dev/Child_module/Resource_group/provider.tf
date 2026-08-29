
terraform {
 backend "azurerm" {
        
    resource_group_name ="backend-rg"
    storage_account_name="backendstorage1991"
    container_name   ="backendstatefile"
    key   ="dev.terraform.tfstate"
    }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.3.0"
    }
  }
}

provider "azurerm" {
   features{}
}