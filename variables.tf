# Variables
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "terraform-query-demo"
}

variable "public_key" {
  description = "Public key for EC2 instances"
  type        = string
  # default     = "INSERT YOUR PUBLIC KEY HERE"
}
