


variable "vpc-name" {
  type = string
  default = "vpc-tfcloud-pipeline"
}

variable "subnet_name" {
  type = string
  default = "subnet-tfcloud-pipeline"
}

variable "ip_cidr_range" {
  type = string
  default = "192.168.140.0/24"
}

variable "vm-name" {
  type = string
  #default = "github-action-tfcloud"
}