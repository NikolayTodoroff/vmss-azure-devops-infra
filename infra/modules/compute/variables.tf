variable "prefix" {
  description = "Resource naming prefix"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group these resources are deployed into"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the VMSS network interfaces (private workload subnet)"
  type        = string
}

variable "admin_username" {
  description = "Admin username for VMSS instances"
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key content for VMSS admin access"
  type        = string
}

variable "instance_count" {
  description = "Number of VMSS instances"
  type        = number
  default     = 2
}

variable "instance_sku" {
  description = "VM size for each VMSS instance"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
}