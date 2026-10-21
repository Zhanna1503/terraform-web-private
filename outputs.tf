output "web_vm_name" {
    value = azurerm_linux_virtual_machine.web_vm.name
}

output "backend_vm_name" {
  value = azurerm_linux_virtual_machine.backend_vm.name
}
output "web_public_ip" {
    value = azurerm_public_ip.pip.ip_address
}

output "backend_private_ip" {
    value = azurerm_network_interface.backend_nic.private_ip_address
}
output "resource_group" {
    value = azurerm_resource_group.rg.name
}