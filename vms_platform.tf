variable "vm_web_family"{
  type = string
  default = "ubuntu-2004-lts"
} 


variable "vm_web_platform"{
  type = string
  default = "standard-v1"
}

variable "vm_web_disktype"{
  type = string
  default = "network-hdd"
}

variable "vm_db_family"{
  type = string
  default = "ubuntu-2004-lts"
}


variable "vm_db_platform"{
  type = string
  default = "standard-v1"
}

variable "vm_db_disktype"{
  type = string
  default = "network-hdd"
}