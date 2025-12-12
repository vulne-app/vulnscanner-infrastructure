output "public_ip" {
  description = "IP publique de la VM"
  value       = azurerm_public_ip.main.ip_address
}

output "ssh_command" {
  description = "Commande SSH pour se connecter"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
}

output "app_url" {
  description = "URL de l'application (via Nginx)"
  value       = "http://${azurerm_public_ip.main.ip_address}"
}

output "nextjs_url" {
  description = "URL directe Next.js"
  value       = "http://${azurerm_public_ip.main.ip_address}:3000"
}