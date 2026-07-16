output "app_service_connections_id" {
  description = "Map of id values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_service_connections_app_service_id" {
  description = "Map of app_service_id values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.app_service_id if v.app_service_id != null && length(v.app_service_id) > 0 }
}
output "app_service_connections_authentication" {
  description = "Map of authentication values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.authentication if v.authentication != null && length(v.authentication) > 0 }
  sensitive   = true
}
output "app_service_connections_client_type" {
  description = "Map of client_type values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.client_type if v.client_type != null && length(v.client_type) > 0 }
}
output "app_service_connections_name" {
  description = "Map of name values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_service_connections_secret_store" {
  description = "Map of secret_store values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.secret_store if v.secret_store != null && length(v.secret_store) > 0 }
}
output "app_service_connections_target_resource_id" {
  description = "Map of target_resource_id values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}
output "app_service_connections_vnet_solution" {
  description = "Map of vnet_solution values across all app_service_connections, keyed the same as var.app_service_connections"
  value       = { for k, v in azurerm_app_service_connection.app_service_connections : k => v.vnet_solution if v.vnet_solution != null && length(v.vnet_solution) > 0 }
}

