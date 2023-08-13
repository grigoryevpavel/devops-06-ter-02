 #считываем данные об образе ОС
data "yandex_compute_image" "ubuntu-2004-lts" {
  family = var.vm_db_family 
}

# 
resource "yandex_compute_instance" "web" {
  name        = local.vm_web_name
  platform_id = var.vm_web_platform
  allow_stopping_for_update = true

  resources{
    cores  = local.vms_resources.web.cores
    memory = local.vms_resources.web.memory 
    core_fraction = local.vms_resources.web.core_fraction
  } 

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
      type = var.vm_web_disktype
      size = 5
    }
  }

  scheduling_policy { preemptible = true }

  network_interface { 
    subnet_id = yandex_vpc_subnet.develop.id
    nat = true
 }

 
  metadata = local.vms_metadata
 
}
 
resource "yandex_compute_instance" "db" {
  name        = local.vm_db_name
  platform_id = var.vm_db_platform
  allow_stopping_for_update = true

  resources {
    cores=local.vms_resources.db.cores
    memory=local.vms_resources.db.memory
    core_fraction=local.vms_resources.db.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
      type = var.vm_db_disktype
      size = 5
    }
  }

  scheduling_policy { preemptible = true }

  network_interface { 
    subnet_id = yandex_vpc_subnet.develop.id
    nat = true
 }

 
  metadata = local.vms_metadata
 
}