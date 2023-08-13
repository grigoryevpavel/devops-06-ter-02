
output "ips"{ 
    value = {
      "${local.vm_web_name}" =  yandex_compute_instance.web.network_interface[0].nat_ip_address
      "${local.vm_db_name}" =   yandex_compute_instance.db.network_interface[0].nat_ip_address
    } 
}