locals {
    vm_web="${var.vm_web_name}"
    vm_db="${var.vm_db_name}"
}

# Общие переменные для всех ВМ
locals{
    ssh_key = {
        serial-port-enable = 1
        ssh-keys  = "ubuntu:ssh-ed25519 ${var.vms_ssh_root_key} " 
    } 
} 