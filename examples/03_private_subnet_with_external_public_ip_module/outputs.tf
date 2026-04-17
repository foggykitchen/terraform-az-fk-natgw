output "bastion_name" {
  value       = module.bastion.bastion_name
  description = "Azure Bastion host name."
}

output "public_ip_id" {
  value       = module.public_ip.id
  description = "Public IP ID created outside NAT Gateway and attached to it."
}

output "nat_gateway_public_ip_id" {
  value       = module.natgw.public_ip_id
  description = "Public IP ID seen by the NAT Gateway module."
}

output "public_ip_address" {
  value       = module.public_ip.ip_address
  description = "Public IP address created outside NAT Gateway and attached to it."
}

output "nsg_id" {
  value       = module.nsg.id
  description = "NSG ID attached to VM NIC."
}

output "ssh_private_key_pem" {
  description = "Private key for SSH (use it in Bastion SSH connection). Keep it secret."
  value       = tls_private_key.public_private_key_pair.private_key_pem
  sensitive   = true
}
