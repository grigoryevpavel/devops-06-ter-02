locals {
    # Названия ВМ
    vm_web_name="netology-${var.vpc_name}-platform-web"
    vm_db_name="netology-${var.vpc_name}-platform-db" 
    vms_metadata = {
      serial-port-enable = 1
      ssh-keys  =  "ubuntu:ssh-ed25519 ${var.public_key} " 
    }
}
