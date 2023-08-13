locals {
    # Названия ВМ
    vm_web_name="netology-${var.vpc_name}-platform-web"
    vm_db_name="netology-${var.vpc_name}-platform-db"
    # Ресурсы всех ВМ
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
    # Общие переменные для всех ВМ
    vms_metadata = {
        serial-port-enable = 1
        ssh-keys  = "ubuntu:ssh-ed25519 ${var.vms_ssh_root_key} " 
    } 
}
