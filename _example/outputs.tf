
output "urn" {
  value       = module.vpc.*.urn
  description = "Name of SSH key."
}
