variable "region" {
  description = "Região da aws"
  default     = "us-east-1"
}

variable "project_name" {
  type        = string
  description = "Nome do projeto"

}
variable "SSM_VPC" {
  type        = string
  description = "ID da VPC para o SSM"
}

variable "SSM_PRIVATE_SUBNETS" {
  type        = list(string)
  description = "IDs das sub-redes privadas para o SSM"
}

variable "SSM_PUBLIC_SUBNETS" {
  type        = list(string)
  description = "IDs das sub-redes privadas para o SSM"

}


variable "SSM_PODS_SUBNETS" {
  type        = list(string)
  description = "IDs das sub-redes privadas para o SSM"

}


