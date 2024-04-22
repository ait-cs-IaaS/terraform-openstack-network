

resource "openstack_networking_network_v2" "network" {
  name           = var.name
  #admin_state_up = "true" #probably default?
}

resource "openstack_networking_subnet_v2" "subnet" {
  name            = "${var.name}_subnet"
  network_id      = openstack_networking_network_v2.network.id
  cidr            = var.cidr
  dns_nameservers = var.dns_nameservers # for internet it's ["8.8.8.8"], other subnets have it empty []
}

