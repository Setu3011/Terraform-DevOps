output "virtual_machine_name" {

  value = azurerm_linux_virtual_machine.vm.name

}

output "virtual_machine_id" {

  value = azurerm_linux_virtual_machine.vm.id

}

output "private_ip_address" {

  value = azurerm_network_interface.nic.private_ip_address

}