data "openstack_compute_availability_zones_v2" "compute_availability_zones_v2_lookup" {
  for_each = var.compute_availability_zones_v2_lookup

  region = each.value.region
  state  = each.value.state
}

