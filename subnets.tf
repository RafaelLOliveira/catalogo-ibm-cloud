locals {
  subnets = ["${var.subnet1}", "${var.subnet2}", "${var.subnet3}"]
}


//3 subnets with ip range
resource "ibm_is_vpc_address_prefix" "subnet1" {
  count = 3
  cidr = "10.0.${count.index + 1}.0/28"
  name = "example-add-prefix-${count.index + 1}"
  vpc  = ibm_is_vpc.vpcGerenciamento.id
  zone = "${var.region}-${count.index + 1}"
}

resource "ibm_is_subnet" "subnet1" {
  count = 3
  depends_on = [
    ibm_is_vpc_address_prefix.subnet1
  ]
  ipv4_cidr_block = "10.0.${count.index + 1}.0/28"
  name            = local.subnets[count.index]
  vpc             = ibm_is_vpc.vpcGerenciamento.id
  zone            = "${var.region}-${count.index + 1}"
  resource_group = data.ibm_resource_group.rg.id
}
