output "ip_address" {
    value = module.compute_instance.ip_address
}

output "external_ip_address" {
    value = module.compute_instance.external_ip_address
}

output "yandex_vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = module.network.yandex_vpc_subnets
}
