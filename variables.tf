variable "app_service_connections" {
  description = <<EOT
Map of app_service_connections, attributes below
Required:
    - app_service_id
    - name
    - target_resource_id
    - authentication (block):
        - certificate (optional)
        - client_id (optional)
        - name (optional)
        - principal_id (optional)
        - secret (optional)
        - subscription_id (optional)
        - type (required)
Optional:
    - client_type
    - vnet_solution
    - secret_store (block):
        - key_vault_id (required)
EOT

  type = map(object({
    app_service_id     = string
    name               = string
    target_resource_id = string
    client_type        = optional(string) # Default: "none"
    vnet_solution      = optional(string)
    authentication = object({
      certificate     = optional(string)
      client_id       = optional(string)
      name            = optional(string)
      principal_id    = optional(string)
      secret          = optional(string)
      subscription_id = optional(string)
      type            = string
    })
    secret_store = optional(object({
      key_vault_id = string
    }))
  }))
}

