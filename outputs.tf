output "app_service_connections" {
  description = "All app_service_connection resources"
  value       = azurerm_app_service_connection.app_service_connections
  sensitive   = true
}
output "app_service_connections_app_service_id" {
  description = "List of app_service_id values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.app_service_id]
}
output "app_service_connections_authentication" {
  description = "List of authentication values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.authentication]
  sensitive   = true
}
output "app_service_connections_client_type" {
  description = "List of client_type values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.client_type]
}
output "app_service_connections_name" {
  description = "List of name values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.name]
}
output "app_service_connections_secret_store" {
  description = "List of secret_store values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.secret_store]
}
output "app_service_connections_target_resource_id" {
  description = "List of target_resource_id values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.target_resource_id]
}
output "app_service_connections_vnet_solution" {
  description = "List of vnet_solution values across all app_service_connections"
  value       = [for k, v in azurerm_app_service_connection.app_service_connections : v.vnet_solution]
}

