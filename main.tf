terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

# Definição dos recursos Kubernetes
resource "kubernetes_namespace" "example" {
  metadata {
    name = var.namespace_name
  }
}

resource "kubernetes_deployment" "example" {
  metadata {
    name = var.deployment_name
    namespace = kubernetes_namespace.example.metadata[0].name
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
        }
      }

      spec {
        container {
          image = var.image
          name  = var.container_name
          ports {
            container_port = var.container_port
          }
        }
      }
    }
  }
}
