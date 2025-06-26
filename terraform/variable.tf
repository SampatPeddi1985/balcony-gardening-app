variable "region" {
  description = "AWS region to deploy EKS"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "Name of EKS cluster"
  type        = string
  default     = "balcony-gardening-cluster"
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "private_subnets" {
  description = "Private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "Public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "desired_capacity" {
  type        = number
  default     = 2
}

variable "max_capacity" {
  type        = number
  default     = 3
}

variable "min_capacity" {
  type        = number
  default     = 1
}

variable "instance_type" {
  type        = string
  default     = "t3.medium"
}
