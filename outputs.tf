output "compute_availability_zones_v2_lookup_id" {
  description = "Map of id values across all compute_availability_zones_v2_lookup, keyed the same as var.compute_availability_zones_v2_lookup except keys with no id are omitted"
  value       = { for k, v in data.openstack_compute_availability_zones_v2.compute_availability_zones_v2_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_availability_zones_v2_lookup_names" {
  description = "Map of names values across all compute_availability_zones_v2_lookup, keyed the same as var.compute_availability_zones_v2_lookup except keys with no names are omitted"
  value       = { for k, v in data.openstack_compute_availability_zones_v2.compute_availability_zones_v2_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "compute_availability_zones_v2_lookup_region" {
  description = "Map of region values across all compute_availability_zones_v2_lookup, keyed the same as var.compute_availability_zones_v2_lookup except keys with no region are omitted"
  value       = { for k, v in data.openstack_compute_availability_zones_v2.compute_availability_zones_v2_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_availability_zones_v2_lookup_state" {
  description = "Map of state values across all compute_availability_zones_v2_lookup, keyed the same as var.compute_availability_zones_v2_lookup except keys with no state are omitted"
  value       = { for k, v in data.openstack_compute_availability_zones_v2.compute_availability_zones_v2_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

