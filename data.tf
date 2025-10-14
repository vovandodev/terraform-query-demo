# Data source for availability zones
data "aws_availability_zones" "available" {
  state = "available"
}

# Default VPC
data "aws_vpc" "default" {
  default = true
}

# Default subnet
data "aws_subnet" "default" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = data.aws_availability_zones.available.names[0]
  default_for_az    = true
}

# AMI data sources for different operating systems (free tier compatible)
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "debian" {
  most_recent = true
  owners      = ["136693071363"] # Debian

  filter {
    name   = "name"
    values = ["debian-12-amd64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "centos" {
  most_recent = true
  owners      = ["125523088429"] # CentOS

  filter {
    name   = "name"
    values = ["CentOS Stream 9 x86_64*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "fedora" {
  most_recent = true
  owners      = ["125523088429"] # Fedora

  filter {
    name   = "name"
    values = ["Fedora-Cloud-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
