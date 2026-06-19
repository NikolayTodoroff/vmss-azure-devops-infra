[1mdiff --git a/infra/env/dev.tfvars b/infra/env/dev.tfvars[m
[1mindex 456f8cd..af16f37 100644[m
[1m--- a/infra/env/dev.tfvars[m
[1m+++ b/infra/env/dev.tfvars[m
[36m@@ -1,6 +1,6 @@[m
[31m-app_name    = "vmssadoinfra"[m
[31m-environment = "dev"[m
[31m-location    = "westeurope"[m
[32m+[m[32mapp_name        = "vmssadoinfra"[m
[32m+[m[32menvironment     = "dev"[m
[32m+[m[32mlocation        = "westeurope"[m
 subscription_id = "bcaf1056-6646-4069-8a85-c154fe786b07"[m
 [m
 admin_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDBsJa0EI9SNgb8YHHbskp+9xmnBKoLdGCu5rEbfOWfk6Jo9EI2yz3kAFwE73LBp/HjWepMRcYtKfkpbybFgo0OBvg8IYBSZbck4AQsn1AdyM6gTIUFfNn5S5aONaJW5Wsy3J/l327xezl0l9bNFw7aitPz9Rz66/CazcPvaFwqO8kLMJWYqXNrVreVskzF4aPGZer9Kyoao8WN8Bgvlvt5qXq9egFk/sU4yeuuYW2c5Ebc939DHtefbxX09a8zRqADrwUoXWvTG3B8HdLJIiIgzZNqdvtWMzFlVdH9xoVJOqfLCgBagD813AXBQ5v9mTxk63jYz6g9yFYRz1MuwCYzhAAvKdEkITdDd8m++7H+LJlPNQS98l5xRyutbe9hwGuGkDtW3wk/FGg5qID5MUX8/34O8ovctVOXNXDDP3frL2yg1Lujehqy7HrYOZ1e9L+TBl+JqrchcxK0gjjfLS+h3Tr7kzUcsXtYhdWFFMEMIP89bgIHPur9BbvlWzO2Nxxjkyy9UEh7pRHG/1MbE0cWrjA++VVA9m0EKpTrwNR3FnltOyfvpjttbBDDqgZh5Uoblxexn1YDttabGjKoFWUC1lw5ULcQRtN25M4klQbEvaLORgoUomLK61BN/pyQ1guyODSjxf8ZIM3yIC3VZV5TB258LhS2Pkyu8w1m7EAFyw== vmssadoinfra-admin"[m
[1mdiff --git a/infra/env/prod.tfvars b/infra/env/prod.tfvars[m
[1mindex 7e9c13e..e2b093b 100644[m
[1m--- a/infra/env/prod.tfvars[m
[1m+++ b/infra/env/prod.tfvars[m
[36m@@ -1,6 +1,6 @@[m
[31m-app_name    = "vmssadoinfra"[m
[31m-environment = "prod"[m
[31m-location    = "westeurope"[m
[32m+[m[32mapp_name        = "vmssadoinfra"[m
[32m+[m[32menvironment     = "prod"[m
[32m+[m[32mlocation        = "westeurope"[m
 subscription_id = "bcaf1056-6646-4069-8a85-c154fe786b07"[m
 [m
 admin_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDL+xh/MSp+hH/eUdpkUqUh3PrFI47B5aiMI+DSSLjTBCiAN3MafpcAmoFhRThl3l9hiv9BtI9jCd9wSCsxIYRq5Zs7/VqwIB9BL4RfbpGmgwu6FhfLgEmX2WqgW6eN+OazIV2h7KYW1GUIyZQRW/hSEEhIvRkzrq010jfyP5NQAFshIROc647bSXHX6DayepEAu/EMExpoMXh1CFQQEYQeNyYixDA2ezz9gX0qx2FaeZ1UGDh68oLXw/9A3idbc5UF18OQi8xFwXdC7l0rx+r580Nmm4G+0fK1AGitTCSoygI9+FynMkL2GdJDBCP+N592vTlanb6Nk+4T96WYHqnaUzJZUP88+hyeM3f+HDnu+ixti46fFZDE0RF0WlC6XI/fzQwPzcaTZbQF1WTteqNeqAVuJ3yMf10TSwUNuF/l+34orxqGcYOig/4e4cClsT5tF+xYqMAOy8QRv6226yAI3/ZglDHD8eaai0kJqX35gJL+WIoTcUmaeKLc1EQXETMiB94pClx7GfyKSDVfytgbXnnlSFGdbsoLSQp4Oa7829W9k1bPSuzfRtnG8cqDFhbP8C1lh7O35Si9IVe2Sc+PMLdrPPOxZWM06Qj3Hq9+uvAArsWvRiJvElmRgQ5EpgC1CekRwXnmuR1G1cVTpOKY5DmaXPM8G4nRYqro/gYcuw== vmssadoinfra-admin"[m
[1mdiff --git a/infra/main/main.tf b/infra/main/main.tf[m
[1mindex 81422b2..836320f 100644[m
[1m--- a/infra/main/main.tf[m
[1m+++ b/infra/main/main.tf[m
[36m@@ -23,7 +23,7 @@[m [mmodule "compute" {[m
   admin_ssh_public_key = var.admin_ssh_public_key[m
   tags                 = local.common_tags[m
   lb_backend_pool_id   = module.load_balancer.backend_pool_id[m
[31m-  health_probe_id = module.load_balancer.lb_probe_id[m
[32m+[m[32m  health_probe_id      = module.load_balancer.lb_probe_id[m
 }[m
 [m
 module "load_balancer" {[m
[1mdiff --git a/infra/modules/compute/main.tf b/infra/modules/compute/main.tf[m
[1mindex ee931c8..8abe432 100644[m
[1m--- a/infra/modules/compute/main.tf[m
[1m+++ b/infra/modules/compute/main.tf[m
[36m@@ -5,11 +5,11 @@[m [mresource "azurerm_linux_virtual_machine_scale_set" "this" {[m
   sku                 = var.instance_sku[m
   instances           = var.instance_count[m
   admin_username      = var.admin_username[m
[31m-  tags = var.tags[m
[32m+[m[32m  tags                = var.tags[m
 [m
[31m-  custom_data         = filebase64("${path.module}/cloud-init/nginx.yaml")[m
[32m+[m[32m  custom_data                     = filebase64("${path.module}/cloud-init/nginx.yaml")[m
   disable_password_authentication = true[m
[31m-  upgrade_mode        = "Automatic"[m
[32m+[m[32m  upgrade_mode                    = "Automatic"[m
 [m
   admin_ssh_key {[m
     username   = var.admin_username[m
[36m@@ -17,15 +17,15 @@[m [mresource "azurerm_linux_virtual_machine_scale_set" "this" {[m
   }[m
 [m
   source_image_reference {[m
[31m-  publisher = "Canonical"[m
[31m-  offer     = "0001-com-ubuntu-server-jammy"[m
[31m-  sku       = "22_04-lts"[m
[31m-  version   = "latest"[m
[31m-}[m
[32m+[m[32m    publisher = "Canonical"[m
[32m+[m[32m    offer     = "0001-com-ubuntu-server-jammy"[m
[32m+[m[32m    sku       = "22_04-lts"[m
[32m+[m[32m    version   = "latest"[m
[32m+[m[32m  }[m
 [m
   os_disk {[m
     storage_account_type = "Standard_LRS"[m
[31m-    caching               = "ReadWrite"[m
[32m+[m[32m    caching              = "ReadWrite"[m
   }[m
 [m
   network_interface {[m
[1mdiff --git a/infra/modules/load-balancer/main.tf b/infra/modules/load-balancer/main.tf[m
[1mindex 9c05dfa..9c56a08 100644[m
[1m--- a/infra/modules/load-balancer/main.tf[m
[1m+++ b/infra/modules/load-balancer/main.tf[m
[36m@@ -38,12 +38,12 @@[m [mresource "azurerm_lb_probe" "http" {[m
 [m
 resource "azurerm_lb_rule" "http" {[m
   loadbalancer_id                = azurerm_lb.this.id[m
[31m-  name                            = "rule-http-${var.prefix}"[m
[31m-  protocol                        = "Tcp"[m
[31m-  frontend_port                   = 80[m
[31m-  backend_port                    = 80[m
[31m-  frontend_ip_configuration_name  = azurerm_lb.this.frontend_ip_configuration[0].name[m
[31m-  backend_address_pool_ids        = [azurerm_lb_backend_address_pool.vmss.id][m
[31m-  probe_id                        = azurerm_lb_probe.http.id[m
[31m-  disable_outbound_snat           = true[m
[32m+[m[32m  name                           = "rule-http-${var.prefix}"[m
[32m+[m[32m  protocol                       = "Tcp"[m
[32m+[m[32m  frontend_port                  = 80[m
[32m+[m[32m  backend_port                   = 80[m
[32m+[m[32m  frontend_ip_configuration_name = azurerm_lb.this.frontend_ip_configuration[0].name[m
[32m+[m[32m  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.vmss.id][m
[32m+[m[32m  probe_id                       = azurerm_lb_probe.http.id[m
[32m+[m[32m  disable_outbound_snat          = true[m
 }[m
\ No newline at end of file[m
[1mdiff --git a/infra/modules/networking/bastion.tf b/infra/modules/networking/bastion.tf[m
[1mindex a4a7aef..c87798d 100644[m
[1m--- a/infra/modules/networking/bastion.tf[m
[1m+++ b/infra/modules/networking/bastion.tf[m
[36m@@ -13,115 +13,115 @@[m [mresource "azurerm_network_security_group" "bastion" {[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_https_inbound" {[m
[31m-  name                         = "AllowHttpsInbound"[m
[31m-  priority                     = 100[m
[31m-  direction                    = "Inbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "Tcp"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_range       = "443"[m
[31m-  source_address_prefix        = "Internet"[m
[31m-  destination_address_prefix   = "*"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowHttpsInbound"[m
[32m+[m[32m  priority                    = 100[m
[32m+[m[32m  direction                   = "Inbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "Tcp"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_range      = "443"[m
[32m+[m[32m  source_address_prefix       = "Internet"[m
[32m+[m[32m  destination_address_prefix  = "*"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_gateway_manager_inbound" {[m
[31m-  name                         = "AllowGatewayManagerInbound"[m
[31m-  priority                     = 110[m
[31m-  direction                    = "Inbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "Tcp"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_range       = "443"[m
[31m-  source_address_prefix        = "GatewayManager"[m
[31m-  destination_address_prefix   = "*"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowGatewayManagerInbound"[m
[32m+[m[32m  priority                    = 110[m
[32m+[m[32m  direction                   = "Inbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "Tcp"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_range      = "443"[m
[32m+[m[32m  source_address_prefix       = "GatewayManager"[m
[32m+[m[32m  destination_address_prefix  = "*"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_lb_inbound" {[m
[31m-  name                         = "AllowAzureLoadBalancerInbound"[m
[31m-  priority                     = 120[m
[31m-  direction                    = "Inbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "Tcp"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_range       = "443"[m
[31m-  source_address_prefix        = "AzureLoadBalancer"[m
[31m-  destination_address_prefix   = "*"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowAzureLoadBalancerInbound"[m
[32m+[m[32m  priority                    = 120[m
[32m+[m[32m  direction                   = "Inbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "Tcp"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_range      = "443"[m
[32m+[m[32m  source_address_prefix       = "AzureLoadBalancer"[m
[32m+[m[32m  destination_address_prefix  = "*"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_host_comm_inbound" {[m
[31m-  name                         = "AllowBastionHostCommunication"[m
[31m-  priority                     = 130[m
[31m-  direction                    = "Inbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "*"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_ranges      = ["8080", "5701"][m
[31m-  source_address_prefix        = "VirtualNetwork"[m
[31m-  destination_address_prefix   = "VirtualNetwork"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowBastionHostCommunication"[m
[32m+[m[32m  priority                    = 130[m
[32m+[m[32m  direction                   = "Inbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "*"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_ranges     = ["8080", "5701"][m
[32m+[m[32m  source_address_prefix       = "VirtualNetwork"[m
[32m+[m[32m  destination_address_prefix  = "VirtualNetwork"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_ssh_rdp_outbound" {[m
[31m-  name                         = "AllowSshRdpOutbound"[m
[31m-  priority                     = 100[m
[31m-  direction                    = "Outbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "*"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_ranges      = ["22", "3389"][m
[31m-  source_address_prefix        = "*"[m
[31m-  destination_address_prefix   = "VirtualNetwork"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowSshRdpOutbound"[m
[32m+[m[32m  priority                    = 100[m
[32m+[m[32m  direction                   = "Outbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "*"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_ranges     = ["22", "3389"][m
[32m+[m[32m  source_address_prefix       = "*"[m
[32m+[m[32m  destination_address_prefix  = "VirtualNetwork"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_azure_cloud_outbound" {[m
[31m-  name                         = "AllowAzureCloudOutbound"[m
[31m-  priority                     = 110[m
[31m-  direction                    = "Outbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "Tcp"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_range       = "443"[m
[31m-  source_address_prefix        = "*"[m
[31m-  destination_address_prefix   = "AzureCloud"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowAzureCloudOutbound"[m
[32m+[m[32m  priority                    = 110[m
[32m+[m[32m  direction                   = "Outbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "Tcp"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_range      = "443"[m
[32m+[m[32m  source_address_prefix       = "*"[m
[32m+[m[32m  destination_address_prefix  = "AzureCloud"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_host_comm_outbound" {[m
[31m-  name                         = "AllowBastionCommunication"[m
[31m-  priority                     = 120[m
[31m-  direction                    = "Outbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "*"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_ranges      = ["8080", "5701"][m
[31m-  source_address_prefix        = "VirtualNetwork"[m
[31m-  destination_address_prefix   = "VirtualNetwork"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowBastionCommunication"[m
[32m+[m[32m  priority                    = 120[m
[32m+[m[32m  direction                   = "Outbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "*"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_ranges     = ["8080", "5701"][m
[32m+[m[32m  source_address_prefix       = "VirtualNetwork"[m
[32m+[m[32m  destination_address_prefix  = "VirtualNetwork"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "bastion_allow_http_outbound" {[m
[31m-  name                         = "AllowHttpOutbound"[m
[31m-  priority                     = 130[m
[31m-  direction                    = "Outbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "*"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_range       = "80"[m
[31m-  source_address_prefix        = "*"[m
[31m-  destination_address_prefix   = "Internet"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.bastion.name[m
[32m+[m[32m  name                        = "AllowHttpOutbound"[m
[32m+[m[32m  priority                    = 130[m
[32m+[m[32m  direction                   = "Outbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "*"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_range      = "80"[m
[32m+[m[32m  source_address_prefix       = "*"[m
[32m+[m[32m  destination_address_prefix  = "Internet"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.bastion.name[m
 }[m
 [m
 resource "azurerm_subnet_network_security_group_association" "bastion" {[m
[1mdiff --git a/infra/modules/networking/nsg.tf b/infra/modules/networking/nsg.tf[m
[1mindex 54ff9dd..185fd40 100644[m
[1m--- a/infra/modules/networking/nsg.tf[m
[1m+++ b/infra/modules/networking/nsg.tf[m
[36m@@ -6,17 +6,17 @@[m [mresource "azurerm_network_security_group" "vmss" {[m
 }[m
 [m
 resource "azurerm_network_security_rule" "allow_http_from_internet" {[m
[31m-  name                         = "AllowHttpFromInternet"[m
[31m-  priority                     = 300[m
[31m-  direction                    = "Inbound"[m
[31m-  access                       = "Allow"[m
[31m-  protocol                     = "Tcp"[m
[31m-  source_port_range            = "*"[m
[31m-  destination_port_range       = "80"[m
[31m-  source_address_prefix        = "Internet"[m
[31m-  destination_address_prefix   = "*"[m
[31m-  resource_group_name          = var.resource_group_name[m
[31m-  network_security_group_name  = azurerm_network_security_group.vmss.name[m
[32m+[m[32m  name                        = "AllowHttpFromInternet"[m
[32m+[m[32m  priority                    = 300[m
[32m+[m[32m  direction                   = "Inbound"[m
[32m+[m[32m  access                      = "Allow"[m
[32m+[m[32m  protocol                    = "Tcp"[m
[32m+[m[32m  source_port_range           = "*"[m
[32m+[m[32m  destination_port_range      = "80"[m
[32m+[m[32m  source_address_prefix       = "Internet"[m
[32m+[m[32m  destination_address_prefix  = "*"[m
[32m+[m[32m  resource_group_name         = var.resource_group_name[m
[32m+[m[32m  network_security_group_name = azurerm_network_security_group.vmss.name[m
 }[m
 [m
 resource "azurerm_network_security_rule" "allow_bastion_ssh" {[m
