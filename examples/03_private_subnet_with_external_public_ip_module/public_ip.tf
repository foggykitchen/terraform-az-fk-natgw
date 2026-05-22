module "public_ip" {
  source = "git::https://github.com/mlinxfeld/terraform-az-fk-public-ip.git"

  name                = "fk-natgw-pip"
  location            = azurerm_resource_group.foggykitchen_rg.location
  resource_group_name = azurerm_resource_group.foggykitchen_rg.name

  tags = var.tags
}
