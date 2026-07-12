output "app_service_connections_id" {
  description = "Map of id values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.id }
}
output "app_service_connections_app_service_id" {
  description = "Map of app_service_id values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.app_service_id }
}
output "app_service_connections_authentication" {
  description = "Map of authentication values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.authentication }
  sensitive   = true
}
output "app_service_connections_client_type" {
  description = "Map of client_type values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.client_type }
}
output "app_service_connections_name" {
  description = "Map of name values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.name }
}
output "app_service_connections_secret_store" {
  description = "Map of secret_store values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.secret_store }
}
output "app_service_connections_target_resource_id" {
  description = "Map of target_resource_id values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.target_resource_id }
}
output "app_service_connections_vnet_solution" {
  description = "Map of vnet_solution values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.vnet_solution }
}

