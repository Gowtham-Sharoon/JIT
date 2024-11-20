# Step 1: Account Details
variable "step1_account_name" {
  description = "Step 1: Enter AWS Account Name (e.g., MyAccount)"
  type        = string
}

variable "step2_account_number" {
  description = "Step 2: Enter AWS Account Number (e.g., 123456789012)"
  type        = string
}

variable "step3_access_key" {
  description = "Step 3: Enter AWS Access Key (get it from your AWS IAM user credentials)"
  type        = string
  sensitive   = true
}

variable "step4_secret_key" {
  description = "Step 4: Enter AWS Secret Key (get it from your AWS IAM user credentials)"
  type        = string
  sensitive   = true
}

variable "step5_region" {
  description = "Step 5: Enter AWS Region (e.g., ap-south-1 for Mumbai)"
  type        = string
  default     = "ap-south-1"
}

# Step 6: Workload Type
variable "step6_workload_type" {
  description = "Step 6: Specify the workload type (SAP or Not SAP)"
  type        = string
}

# Step 7-10: VPC and Subnet Configuration
variable "step7_vpc_name" {
  description = "Step 7: Enter the Name of the VPC (e.g., main-vpc)"
  type        = string
}

variable "step8_vpc_cidr" {
  description = "Step 8: Enter the CIDR block for the VPC (e.g., 10.0.0.0/16)"
  type        = string
}

variable "step9_public_subnet_cidrs" {
  description = "Step 9: Enter CIDR blocks for public subnets (comma-separated if multiple, e.g., [\"10.0.1.0/24\", \"10.0.2.0/24\"])"
  type        = list(string)
}

variable "step10_private_subnet_cidrs" {
  description = "Step 10: Enter CIDR blocks for private subnets (comma-separated if multiple, e.g., [\"10.0.3.0/24\", \"10.0.4.0/24\"])"
  type        = list(string)
}

# Step 11-15: VM Deployment
variable "step11_vm_count" {
  description = "Step 11: Enter the total number of VMs to deploy (e.g., 2)"
  type        = number
}

variable "step12_vm_os" {
  description = "Step 12: Enter the OS type for the VM (Ubuntu, Amazon Linux, or Windows)"
  type        = string
}

variable "step13_vm_instance_type" {
  description = "Step 13: Enter the instance type for the VM (e.g., t2.micro, t3.medium, m5.large)"
  type        = string
}

variable "step14_vm_disk_size" {
  description = "Step 14: Enter the disk size (in GB) for the VMs (e.g., 30)"
  type        = number
}

variable "step15_vm_elastic_ip_allocation" {
  description = "Step 15: Allocate Elastic IP for VMs in the public subnet? (yes or no)"
  type        = string
}
