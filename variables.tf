# Definição de variáveis do Terraform
variable "namespace_name" {
  description = "O nome do namespace Kubernetes"
  type        = string
}

variable "deployment_name" {
  description = "O nome da implantação Kubernetes"
  type        = string
}

variable "replicas" {
  description = "O número de réplicas da implantação"
  type        = number
}

variable "app_name" {
  description = "O nome da aplicação"
  type        = string
}

variable "image" {
  description = "A imagem Docker a ser usada na implantação"
  type        = string
}

variable "container_name" {
  description = "O nome do contêiner da aplicação"
  type        = string
}

variable "container_port" {
  description = "A porta exposta pelo contêiner"
  type        = number
}
