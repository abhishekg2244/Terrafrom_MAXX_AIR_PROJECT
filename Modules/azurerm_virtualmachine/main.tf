resource "azurerm_network_interface" "nicblock" {
    for_each = var.vms
    name = each.value.nic-name
    resource_group_name = each.value.resource_group_name
    location = each.value.location

    ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasubnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.datapipblock[each.key].id
    
  }
  
}

resource "azurerm_linux_virtual_machine" "vmblock" {
    for_each = var.vms
    name = each.value.vm-name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = each.value.size
    admin_username = "adminuser"
    admin_password = "Qwertyuiop@1234"
    disable_password_authentication = false
    network_interface_ids = [azurerm_network_interface.nicblock[each.key].id,]
   
    os_disk {
       caching              = "ReadWrite"
       storage_account_type = "Standard_LRS"
    }
    
    source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    }
  
}