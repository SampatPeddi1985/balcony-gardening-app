output "cluster_name" {
  value = aws_eks_cluster.balcony_cluster.name
}

output "region" {
  value = var.region
}

output "update_kubeconfig_command" {
  value = "aws eks --region ${var.region} update-kubeconfig --name ${aws_eks_cluster.balcony_cluster.name}"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
