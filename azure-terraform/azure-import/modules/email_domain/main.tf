resource "azurerm_email_communication_service_domain" "email_domain" {

  name = var.name

  email_service_id = "/subscriptions/44d29901-43e4-43f1-b207-3c9f043349ea/resourceGroups/azure-rg/providers/Microsoft.Communication/emailServices/azureemail3011"
 
  tags = {}
  user_engagement_tracking_enabled = false

  domain_management = "AzureManaged"

}
