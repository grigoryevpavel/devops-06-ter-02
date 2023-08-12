
output "ips"{ 
    value = {
      "${var.vm_web_name}" =  yandex_compute_instance.example.network_interface[0].nat_ip_address
      "${var.vm_db_name}" =   yandex_compute_instance.example2.network_interface[0].nat_ip_address
    } 
}