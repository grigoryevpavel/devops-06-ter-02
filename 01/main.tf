terraform {
  required_providers {
    yandex = { source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13" 
}
provider "yandex" {
    token     = var.token
    cloud_id  = var.cloud_id
    folder_id = var.folder_id
    zone      = "ru-central1-a"
 }

 #считываем данные об образе ОС
data "yandex_compute_image" "ubuntu-2004-lts" {
  family = var.vm_web_family 
}

resource "yandex_compute_instance" "example" {
  name        = var.vm_web_name
  platform_id = var.vm_web_platform

  resources {
    cores  = 2
    memory = 1 
    core_fraction = 5
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
      type = var.vm_web_disktype
      size = 5
    }
  }

  scheduling_policy { preemptible = true }

  network_interface { subnet_id = yandex_vpc_subnet.develop.id }

 
  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:ssh-ed25519 ${var.vms_ssh_root_key} " 
  }
 
}