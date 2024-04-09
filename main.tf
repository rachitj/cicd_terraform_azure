
# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source = "./modules/storage_account/storage_account"

  resource_group_name     = var.resource_group_name
  storage_account_name    = var.storage_account_name
  location                = var.location
  source_folder_name      = var.source_folder_name
  destination_folder_name = var.destination_folder_name

  depends_on = [
    azurerm_resource_group.rg
  ]
}

module "data_factory" {
  source = "./modules/data_factory/data_factory"

  df_name              = var.df_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name

  depends_on = [
    module.storage_account
  ]
}

module "budget" {
  source = "./modules/budget/budget"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  email_address = var.email_address
  depends_on = [
    module.storage_account
  ]
}
