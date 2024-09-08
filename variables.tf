variable "region" {
  description = "AWS Deployment region.."
  
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets_cidr" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnets_cidr" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
}

variable "environment" {
  description = "The environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "public_ami_id" {
  description = "AMI ID for the public EC2 instance"
  type        = string
}

variable "private_ami_id" {
  description = "AMI ID for the private EC2 instance"
  type        = string
}

variable "public_instance_type" {
  description = "Instance type for the public EC2 instance"
  type        = string
}

variable "private_instance_type" {
  description = "Instance type for the private EC2 instance"
  type        = string
}

variable "sg" {
  description = "Name for the security group"
  type        = string
}