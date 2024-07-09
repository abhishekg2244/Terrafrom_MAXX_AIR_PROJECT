rgvariable = {
    rg1={
        name = "preprod_MAXXAIR_RG"
        location = "west europe"
    }
}
vnets = {
    vnet1 ={
        name = "preprodvnet"
       resource_group_name = "preprod_MAXXAIR_RG"
       location = "west europe"
       address_space = ["192.168.0.0/16"]
    }
}

subnets = {
    subnet1 ={
    name = "preprodforntendsubnet"
    resource_group_name = "preprod_MAXXAIR_RG"
    virtual_network_name = "preprodvnet"
    address_prefixes = ["192.168.0.0/17"]
    }
}
vms = {
    vm1 ={
        nic-name             = "preprodfrontendvm1-nic"
        vm-name              = "preprodfrontendvm1"
        resource_group_name  = "preprod_MAXXAIR_RG"
        virtual_network_name = "preprodvnet"
        datasubnet           = "preprodforntendsubnet" 
        location             = "west europe"
        size                 = "Standard_F2"
        datapublic           = "jumpserverpip"

    }

    # vm2 ={
    #     nic-name             = "preprodfrontendvm2-nic"
    #     vm-name              = "preprodfrontendvm2"
    #     resource_group_name  = "preprod_MAXXAIR_RG"
    #     virtual_network_name = "preprodvnet"
    #     datasubnet           = "preprodforntendsubnet" 
    #     location             = "west europe"
    #     size                 = "Standard_F2"


    # }
    # vm3 ={
    #     nic-name             = "preprodfrontendvm3-nic"
    #     vm-name              = "preprodfrontendvm3"
    #     resource_group_name  = "preprod_MAXXAIR_RG"
    #     virtual_network_name = "preprodvnet"
    #     datasubnet           = "preprodforntendsubnet" 
    #     location             = "west europe"
    #     size                 = "Standard_F2"


    # }
}

publicips = {
    pip1 ={
    name = "jumpserverpip"
    resource_group_name = "preprod_MAXXAIR_RG"
    location = "west europe"
    allocation_method = "Static"
    }
}