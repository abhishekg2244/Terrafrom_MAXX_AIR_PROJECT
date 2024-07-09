module "rg" {
  source = "../../Modules/azurerm_resourcegroup"
  rgvariable = var.rgvariable
}

module "vnet" {
  depends_on = [ module.rg ]
  source = "../../Modules/azurerm_virtualnetwork"
  vnets = var.vnets
  
}

module "subnet" {
  depends_on = [ module.rg,module.vnet ]
  source = "../../Modules/azurerm_subnet"
  subnets = var.subnets
  
}
module "vm" {
  depends_on = [ module.rg,module.vnet,module.subnet,module.pip ]
  source = "../../Modules/azurerm_virtualmachine"
  vms = var.vms
  
}
module "pip" {
  depends_on = [ module.rg ]
  source = "../../Modules/azurerm_publicip"
  publicips = var.publicips
}