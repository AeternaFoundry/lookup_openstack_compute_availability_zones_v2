variable "compute_availability_zones_v2_lookup" {
  description = <<EOT
Map of compute_availability_zones_v2_lookup, attributes below
Optional:
    - region
    - state
EOT

  type = map(object({
    region = optional(string)
    state  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_availability_zones_v2_lookup : (
        v.state == null || (contains([for v in ["available", "unavailable"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"available\", \"unavailable\""
  }
}

