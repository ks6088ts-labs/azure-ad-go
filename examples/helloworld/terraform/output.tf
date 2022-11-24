output "tenant_id" {
  value       = data.azuread_client_config.current.tenant_id
  description = "TENANT_ID"
}

output "cliend_id" {
  value       = azuread_application.example.application_id
  description = "CLIENT_ID"
}

output "client_secret" {
  value       = azuread_application_password.example.value
  description = "CLIENT_SECRET"
  sensitive   = true
}
