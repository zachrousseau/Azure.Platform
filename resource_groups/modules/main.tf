resource "azurerm_resource_group" "this"{

    for_each = {for rgp in local.resource_group_names : rgp.name => rgp}

    name = each.value.name
    location = var.location
}
