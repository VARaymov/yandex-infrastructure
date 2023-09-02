resource "yandex_compute_instance" "vm-1" {
  name = var.instance_name
  platform_id = var.instance_platform_id

  resources {
    cores  = var.instance_cores
    memory = var.instance_memory
  }

  boot_disk {
    initialize_params {
      image_id = var.instance_image_id
	  size = var.instance_disk_size 
    }
  }
  
  scheduling_policy {
        preemptible = var.instance_preemptible
    }
  
  network_interface {
    subnet_id = var.instance_subnet_id
    nat       = var.instance_use_nat
  }

  metadata = {
      user-data = var.instance_user_data
  }
}
