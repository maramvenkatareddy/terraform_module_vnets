resource "azurerm_virtual_network" "my_vnet" {
    name = var.virual_network_details.name
    resource_group_name = var.resource_group_details.name
    location = var.resource_group_details.location
    address_space = var.virual_network_details.address_space

    depends_on = [
      azurerm_resource_group.resg
    ]
  
}

resource "azurerm_subnet" "my_six_subnets" {
    name = var.subnet-details.names[count.index]
    count = length(var.subnet-details.names)
    resource_group_name = var.resource_group_details.name
    virtual_network_name = var.virual_network_details.name
    address_prefixes = [cidrsubnet(var.virual_network_details.address_space[0], 8, count.index)]

    depends_on = [
      azurerm_virtual_network.my_vnet
    ]
}