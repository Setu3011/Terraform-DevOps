output "id" {

  value = azurerm_email_communication_service_domain.email_domain.id

}

output "name" {

  value = azurerm_email_communication_service_domain.email_domain.name
  
}

output "domain" {
  value = azurerm_email_communication_service_domain.email_domain
}

# output "sender_email" {
#   value = "DoNotReply@${azurerm_email_communication_service_domain.email_domain}"
# }

output "sender_email" {

  value = "DoNotReply@${azurerm_email_communication_service_domain.email_domain.from_sender_domain}"
}

