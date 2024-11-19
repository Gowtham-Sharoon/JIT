variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "AWS Region for the deployment"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
}

variable "private_subnet_count" {
  description = "Number of private subnets"
  type        = number
}

variable "subnet_details" {
  description = "Subnet details (name and CIDR block)"
  type        = map(object({
    cidr = string
  }))
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Key pair name for the EC2 instances"
  type        = string
}

variable "additional_volumes" {
  description = "Additional EBS volumes for instances"
  type        = list(object({
    size = number
    type = string
  }))
  default = []
}
