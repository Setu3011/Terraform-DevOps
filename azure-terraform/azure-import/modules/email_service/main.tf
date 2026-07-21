resource "azurerm_email_communication_service" "email_service" {

  name = var.name

  resource_group_name = var.resource_group_name

  data_location = "India"

  tags = {}
}
