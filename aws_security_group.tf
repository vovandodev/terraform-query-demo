# Security group blocking all inbound traffic
resource "aws_security_group" "demo_sg" {
  name        = "${var.project_name}-sg"
  description = "Security group for terraform query demo instances - no inbound access"
  vpc_id      = data.aws_vpc.default.id

  # No ingress rules - all inbound traffic blocked

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "${var.project_name}-security-group"
    Project = var.project_name
  }
}
