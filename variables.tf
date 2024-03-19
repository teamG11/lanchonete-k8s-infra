# Definição de variáveis do Terraform
variable "namespace_name" {
  description = "O nome do namespace Kubernetes"
  type        = string
  default     = "default"
}

variable "deployment_name" {
  description = "O nome da implantação Kubernetes"
  type        = string
  default     = "deployment"
}

variable "replicas" {
  description = "O número de réplicas da implantação"
  type        = number
  default     = 3
}

variable "app_name" {
  description = "O nome da aplicação"
  type        = string
  default     = "lanchonete"
}

variable "image" {
  description = "A imagem Docker a ser usada na implantação"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "O nome do contêiner da aplicação"
  type        = string
  default     = "lanchonete-app"
}

variable "container_port" {
  description = "A porta exposta pelo contêiner"
  type        = number
  default     = 8080
}
