resource "azurerm_public_ip" "publicipblock" {
    for_each = var.publicips
    name = each.value.pip-name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    allocation_method = each.value.allocation_method

}