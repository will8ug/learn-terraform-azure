terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "learn_tf_az_9f5456"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "eastasia"

  tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
    TagToUpdate = "UpdateMeToTriggerANewBuild-2024070101"
  }
}

resource "azurerm_virtual_network" "vnet" {
  address_space       = ["10.0.0.0/16"]
  location            = "eastasia"
  name                = "myTFVnet"
  resource_group_name = azurerm_resource_group.rg.name
}
