output "id" {
  value = azurerm_function_app_flex_consumption.func3011.id
}

output "name" {
  value = azurerm_function_app_flex_consumption.func3011.name
}

output "default_hostname" {
  value = azurerm_function_app_flex_consumption.func3011.default_hostname
}

output "principal_id" {
  value = azurerm_function_app_flex_consumption.func3011.identity[0].principal_id
}

