output "vnetid" {
    value = azurerm_virtual_network.my_vnet.id
}

output "subnets" {
    value = azurerm_subnet.my_six_subnets
  
}

output "resource_group_name" {
    value = azurerm_resource_group.resg.name
}

output "location" {
    value = azurerm_resource_group.resg.location
}

output "subnets_length" {
    value = length( azurerm_subnet.my_six_subnets)
}