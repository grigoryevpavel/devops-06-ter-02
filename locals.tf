locals {
    vm_web_name="${var.vm_web_name}"
    vm_db_name="${var.vm_db_name}"
}

locals{
    vms_resources={
        web={  
            cores  = 2
            memory = 1 
            core_fraction = 5
        }
        db={
            cores  = 2
            memory = 2 
            core_fraction = 20
        }
    }
}

# Общие переменные для всех ВМ
locals{
    ssh_key = {
        serial-port-enable = 1
        ssh-keys  = "ubuntu:ssh-ed25519 ${var.vms_ssh_root_key} " 
    } 
} 