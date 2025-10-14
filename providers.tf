# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Random suffixes for instance names
resource "random_id" "instance_suffix" {
  count       = 5
  byte_length = 4
}
