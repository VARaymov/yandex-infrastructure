module "compute_instance" {
  source = "./modules/tf-yc-instance" 
  instance_subnet_id = [for k, subnet in module.network.yandex_vpc_subnets :
    subnet if subnet.zone == var.zone
  ][0].subnet_id
}

module "network" {
  source = "./modules/tf-yc-network"
}

