output "storage_account_id" {
  description = "Id created by storage account"
  value       = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "Primary access key"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}