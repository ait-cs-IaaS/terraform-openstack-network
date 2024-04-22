output "network_name" {
  value = var.name
}

output "network_cidr" {
  value = var.cidr
}

output "network_id" {
    value = openstack_networking_network_v2.network.id
}

output "subnet_id" {
    value = openstack_networking_subnet_v2.subnet.id
}