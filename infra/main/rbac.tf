# # Workflow SP — needs Key Vault Administrator during terraform apply
# resource "azurerm_role_assignment" "kv_workflow_sp" {
#   scope                = module.key_vault.key_vault_id
#   role_definition_name = "Key Vault Administrator"
#   principal_id         = var.workflow_sp_object_id
# }
