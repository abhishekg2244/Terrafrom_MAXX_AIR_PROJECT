data "azurerm_subnet" "datasubnet" {
    for_each = var.vms
    name = each.value.datasubnet
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
  
}

data "azurerm_public_ip" "datapipblock" {
 for_each = var.vms
  name                = each.value. datapublic
  resource_group_name = each.value.resource_group_name
}