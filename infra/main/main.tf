resource "azurerm_resource_group" "rg_main" {
  name     = "rg-main-${local.prefix}"
  location = var.location
}

module "networking" {
  source = "../modules/networking"

  prefix              = local.prefix
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_main.name
  tags                = local.common_tags
}

module "compute" {
  source = "../modules/compute"

  prefix               = local.prefix
  location             = var.location
  resource_group_name  = azurerm_resource_group.rg_main.name
  subnet_id            = module.networking.vmss_subnet_id
  admin_username       = var.admin_username
  admin_ssh_public_key = var.admin_ssh_public_key
  tags                 = local.common_tags
  lb_backend_pool_id   = module.load_balancer.backend_pool_id
}

module "load_balancer" {
  source = "../modules/load-balancer"

  prefix              = local.prefix
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_main.name
  tags                = local.common_tags
}
