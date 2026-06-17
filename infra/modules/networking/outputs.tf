output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "vmss_subnet_id" {
  value = azurerm_subnet.vmss.id
}

output "nsg_id" {
  value = azurerm_network_security_group.vmss.id
}