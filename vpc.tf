# locals {
#   //colocar tags diferentes
#   tag_vpc_gerenciamento= var.tags
# }

resource "ibm_is_vpc" "vpcGerenciamento" {
  name           = var.vpc_name
  resource_group = data.ibm_resource_group.rg.id
  tags           = var.tags
}
