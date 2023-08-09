variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "AAAAC3NzaC1lZDI1NTE5AAAAID8jhDzsaOvDdpoN/9j6FApnIvtnkCD62gFx5qDkj4j0"
  description = "ssh public key"
}

variable "vm_web_family"{
  type = string
  default = "ubuntu-2004-lts"
}


variable "vm_web_name"{
  type = string
  default = "netology-develop-platform-web"
}

variable "vm_web_platform"{
  type = string
  default = "standard-v1"
}

variable "vm_web_disktype"{
  type = string
  default = "network-hdd"
}