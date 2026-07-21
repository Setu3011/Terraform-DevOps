output "id" {

  value = azurerm_communication_service.communication_service.id

}

output "name" {

  value = azurerm_communication_service.communication_service.name

}

output "primary_connection_string" {

  value     = azurerm_communication_service.communication_service.primary_connection_string

  sensitive = true

}
