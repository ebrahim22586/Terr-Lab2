


<h1>Terraform AWS Infrastructure Setup</h1>
This repository contains Terraform configurations for setting up a basic AWS infrastructure. The setup includes a Virtual Private Cloud (VPC), subnets, NAT Gateway, routing tables, security groups, and EC2 instances.

Prerequisites
Terraform v1.0 or later
An AWS account with appropriate permissions
Configuration
Variables
Ensure the following variables are defined in your terraform.tfvars file or through environment variables:

region: AWS region to deploy the resources
vpc_cidr: CIDR block for the VPC
environment: Environment name (e.g., dev, prod)
public_subnets_cidr: List of CIDR blocks for public subnets
private_subnets_cidr: List of CIDR blocks for private subnets
availability_zones: List of availability zones to deploy the subnets
public_ami_id: AMI ID for the public EC2 instance
public_instance_type: Instance type for the public EC2 instance
private_ami_id: AMI ID for the private EC2 instance
private_instance_type: Instance type for the private EC2 instance
sg: Security group name
Overview
VPC: Creates a Virtual Private Cloud (VPC) with DNS support and hostnames enabled.
Subnets: Creates public and private subnets in specified availability zones.
Internet Gateway: Sets up an internet gateway for public subnet access.
NAT Gateway: Configures a NAT Gateway with an Elastic IP for outbound traffic from private subnets.
Routing Tables: Configures routing tables for public and private subnets.
Security Group: Creates a default security group allowing all traffic within the VPC.
EC2 Instances:
Public EC2 Instance: An EC2 instance in the public subnet with a public IP.
Private EC2 Instance: An EC2 instance in the private subnet without a public IP, with Apache installed via user data.
Usage
Initialize Terraform: Run the following command to initialize the Terraform configuration:

bash
Copy code
terraform init
Plan the Deployment: Preview the changes Terraform will make:

bash
Copy code
terraform plan
Apply the Configuration: Deploy the infrastructure:

bash
Copy code
terraform apply
Destroy the Infrastructure: If you need to remove the resources:

bash
Copy code
terraform destroy
Files
main.tf: Contains the main Terraform configuration.
script_apache.tlp: User data script to install Apache on the private EC2 instance.
Notes
Ensure that your AWS credentials are properly configured in your environment.
Modify the Terraform configuration according to your needs, such as adjusting instance types or adding additional resources.
