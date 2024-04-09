
variable "subscription_id" {
  description = "The subscription_id for Application Object for login to Azure"
  type        = string
}

variable "client_id" {
  description = "The client_id for Application Object for login to Azure"
  type        = string
}

variable "client_secret" {
  description = "The client_secret for Application Object for login to Azure"
  type        = string
}

variable "tenant_id" {
  description = "The tenant_id for Application Object for login to Azure"
  type        = string
}


variable "resource_group_name" {
  description = "The resource group name"
  type        = string
}


variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "tags" {
  description = "The tags associated with the resource group"
  type        = map(string)
}

variable "storage_account_name" {
  description = "The storage account name"
  type        = string
}

variable "source_folder_name" {
  description = "The source folder name"
  type        = string
}

variable "destination_folder_name" {
  description = "The destination folder name"
  type        = string
}

variable "df_name" {
  description = "The data factory name"
  type        = string
}

variable "email_address" {
  description = "The email_address"
  type        = string
}