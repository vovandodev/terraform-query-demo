# Key pair for EC2 instances
resource "aws_key_pair" "demo_key" {
  key_name   = "${var.project_name}-key"
  public_key = var.public_key
}
