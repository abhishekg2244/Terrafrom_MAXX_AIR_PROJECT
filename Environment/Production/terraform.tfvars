rgvariable = {
    rg1={
        name = "prod_MAXXAIR_RG"
        location = "west europe"
    }
}
vnets = {
    vnet1 ={
        name = "prodvnet"
       resource_group_name = "prod_MAXXAIR_RG"
       location = "west europe"
       address_space = ["192.168.0.0/16"]
    }
}

subnets = {
    subnet1 ={
    name = "prodforntendsubnet"
    resource_group_name = "prod_MAXXAIR_RG"
    virtual_network_name = "prodvnet"
    address_prefixes = ["192.168.0.0/17"]
    }
}

vms = {
    vm1 ={
        nic-name             = "prodfrontendvm1-nic"
        vm-name              = "prodfrontendvm1"
        resource_group_name  = "prod_MAXXAIR_RG"
        virtual_network_name = "prodvnet"
        datasubnet           = "prodforntendsubnet" 
        location             = "west europe"
        size                 = "Standard_F2"
        datapublic           = "jumpserverpip"


    }

    # vm2 ={
    #     nic-name             = "prodfrontendvm2-nic"
    #     vm-name              = "prodfrontendvm2"
    #     resource_group_name  = "prod_MAXXAIR_RG"
    #     virtual_network_name = "prodvnet"
    #     datasubnet           = "prodforntendsubnet" 
    #     location             = "west europe"
    #     size                 = "Standard_F2"


    # }
    #  vm3 ={
    #     nic-name             = "prodfrontendvm3-nic"
    #     vm-name              = "prodfrontendvm3"
    #     resource_group_name  = "prod_MAXXAIR_RG"
    #     virtual_network_name = "prodvnet"
    #     datasubnet           = "prodforntendsubnet" 
    #     location             = "west europe"
    #     size                 = "Standard_F2"


    # }
}
publicips = {
    pip1 ={
    pip-name = "jumpserverpip"
    resource_group_name = "prod_MAXXAIR_RG"
    location = "west europe"
    allocation_method = "Static"
    }
}