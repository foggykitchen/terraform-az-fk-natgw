module "natgw" {
  source = "github.com/foggykitchen/terraform-az-fk-natgw" 

  name                = "fk-natgw"
  location            = azurerm_resource_group.foggykitchen_rg.location
  resource_group_name = azurerm_resource_group.foggykitchen_rg.name

  create_public_ip = false
  public_ip_id     = module.public_ip.id

  subnet_associations = {
    private_subnet = {
      subnet_id = module.vnet.subnet_ids["fk-subnet-private"]
    }
  }

  tags = var.tags
}
