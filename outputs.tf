output "network_policies_id" {
  description = "Map of id values across all network_policies, keyed the same as var.network_policies except keys with no id are omitted"
  value       = { for k, v in kubernetes_network_policy.network_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_policies_metadata" {
  description = "Map of metadata values across all network_policies, keyed the same as var.network_policies except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_network_policy.network_policies : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "network_policies_spec" {
  description = "Map of spec values across all network_policies, keyed the same as var.network_policies except keys with no spec are omitted"
  value       = { for k, v in kubernetes_network_policy.network_policies : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

