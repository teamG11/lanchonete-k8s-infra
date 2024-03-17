# Saídas do Terraform
output "cluster_endpoint" {
  description = "O endpoint do cluster EKS"
  value       = aws_eks_cluster.example.endpoint
}

output "cluster_certificate_authority_data" {
  description = "O certificado de autoridade do cluster EKS"
  value       = aws_eks_cluster.example.certificate_authority.0.data
}
