output "base_name" {
  value = var.base_name
}

output "connection_strings" {
  value = {
    primary_connection_string = azurerm_redis_cache.default.primary_connection_string
    secondary_connection_string = azurerm_redis_cache.default.secondary_connection_string
  }
}

output "private_ip_address" {
  value = azurerm_private_endpoint.default.private_service_connection[0].private_ip_address
}