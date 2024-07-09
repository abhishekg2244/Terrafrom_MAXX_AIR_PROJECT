rgvariable = {
    rg1={
        name = "QA_MAXXAIR_RG"
        location = "west europe"
    }
}
vnets = {
    vnet1 ={
        name = "QAvnet"
       resource_group_name = "QA_MAXXAIR_RG"
       location = "west europe"
       address_space = ["192.168.0.0/16"]
    }
}

subnets = {
    subnet1 ={
    name = "QAforntendsubnet"
    resource_group_name = "QA_MAXXAIR_RG"
    virtual_network_name = "QAvnet"
    address_prefixes = ["192.168.0.0/17"]
    }
}

vms = {
    vm1 ={
        nic-name             = "QAfrontendvm1-nic"
        vm-name              = "QAfrontendvm1"
        resource_group_name  = "QA_MAXXAIR_RG"
        virtual_network_name = "QAvnet"
        datasubnet           = "QAforntendsubnet" 
        location             = "west europe"
        size                 = "Standard_F2"
        datapublic           = "jumpserverpip"


    }

    # vm2 ={
    #     nic-name             = "QAfrontendvm2-nic"
    #     vm-name              = "QAfrontendvm2"
    #     resource_group_name  = "QA_MAXXAIR_RG"
    #     virtual_network_name = "QAvnet"
    #     datasubnet           = "QAforntendsubnet" 
    #     location             = "west europe"
    #     size                 = "Standard_F2"


    # }
    
}
publicips = {
    pip1 ={
    name = "jumpserverpip"
    resource_group_name = "QA_MAXXAIR_RG"
    location = "west europe"
    allocation_method = "Static"
    }
}