terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "AbhishekRG_donotdelete"  
    storage_account_name = "maxxairstaccount"                      
    container_name       = "tfstatefilestorecontainer"                       
    key                  = "qa.tfstate"        
  }
}

provider "azurerm" {
  features {
    
  }
}